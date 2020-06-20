#!/bin/bash

# credit: jane

export LANG=C

INPUT="$(<"$1")"
OUTPUT=""

CONTROL="{}\""
WHITESPACE=$' \r\n\t'
NOSPACE="${WHITESPACE}${CONTROL}"
MUSTQUOTE=$'[ \r\n\t{}]'

i=0
c=""
readC () {
  ((i++))

  read -rN1 c
}

seek () {
  (( i += "$1" ))

  exec <<< "${INPUT:i}"
}

charIn () {
  case "$2" in
    *"$1"*) return 0;;
    *) return 1;;
  esac
}

writeToken () {
  if [ -z "$1" ]
    then OUTPUT+="\"\""
  elif [[ "$1" =~ ${MUSTQUOTE} ]]
    then OUTPUT+="\"$1\""
  else
    charIn "${OUTPUT: -1}" "${NOSPACE}" || OUTPUT+=" "

    OUTPUT+="$1"
  fi
}

eatComments () {
  if [ "${c}" = "/" ]
    then readC

    if [ "${c}" = "/" ]
      then while readC
        do [ "${c}" = $'\n' ] && return 0
      done
    fi

    seek -1
  fi

  return 1
}

readToken () {
  if [ "${c}" = "{" ]
    then OUTPUT+="{"
    readNodes
    return
  fi

  if [ "${c}" = "\"" ]
    then token=""

    while readC
      do if [ "${c}" = "\"" ]
        then writeToken "${token}"
        return
      fi

      token+="${c}"
    done
  fi

  token="${c}"

  while readC
    do eatComments && continue

    if charIn "${c}" "${CONTROL}"
      then seek -1
      writeToken "${token}"
      return
    fi

    if charIn "${c}" "${WHITESPACE}"
      then writeToken "${token}"
      return
    fi

    token+="${c}"
  done
}

readNodes () {
  while readC
    do

    [ "${c}" = "}" ] && OUTPUT+="}" && return

    charIn "${c}" "${WHITESPACE}" && continue

    eatComments && continue

    readToken
  done
}

readNodes <<< "${INPUT}"

echo -n "${OUTPUT}" > "$1"
