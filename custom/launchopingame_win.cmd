@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
:: Generate junk string blacklist first
pushd "C:\Users\Owner\Documents\Projects\TF2LeakInfo"
echo 0>./contrib/launchop_blacklist_win.txt
pushd "C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\_LAUNCHOPTIONS_"
for /F "tokens=1*" %%b IN (@LAUNCH_OPTIONS.ini) DO (
	set IsActualLaunchOption=false
	for /F "tokens=1 eol= delims=" %%R IN (C:\Users\Owner\Documents\Projects\TF2LeakInfo\launchop_ref_win.txt) DO (
		if %%R==%%b (
			set IsActualLaunchOption=true
		)
	)
	if !!IsActualLaunchOption!!==false (
		set IsDuplicate=false
		for /F "tokens=1" %%d IN (C:\Users\Owner\Documents\Projects\TF2LeakInfo\contrib\launchop_blacklist_win.txt) DO (
			if %%d==%%b (
				set IsDuplicate=true
			)
		)
		if !!IsDuplicate!!==false (
			echo %%b>>C:\Users\Owner\Documents\Projects\TF2LeakInfo\contrib\launchop_blacklist_win.txt
		)
	)

)
:: Now filter out the junk string launch ops
echo 0>C:\Users\Owner\Documents\Projects\TF2LeakInfo\contrib\launchoplist_filtered_win.txt
for /F "tokens=1*" %%b IN (@LAUNCH_OPTIONS.ini) DO (
	set IsJunkString=false
	for /F "tokens=1*" %%g IN (C:\Users\Owner\Documents\Projects\TF2LeakInfo\contrib\launchop_blacklist_win.txt) DO (
		if %%g==%%b (
			set IsJunkString=true
		)
	)
	if !!IsJunkString!!==false (
		set IsDuplicate=false
		for /F "tokens=1*" %%d IN (C:\Users\Owner\Documents\Projects\TF2LeakInfo\contrib\launchoplist_filtered_win.txt) DO (
			if %%d==%%b (
				set IsDuplicate=true
			)
		)
		if !!IsDuplicate!!==false (
			echo %%b>>C:\Users\Owner\Documents\Projects\TF2LeakInfo\contrib\launchoplist_filtered_win.txt
		)
	)
)
popd
popd
ENDLOCAL