# Particle Effects on Main Menu

_Originally posted by [Puddy](https://steamcommunity.com/profiles/76561198177327375) on the huds.tf guide forums_

You can place any particle effect on the main menu by putting this into your `mainmenuoverride.res`:

```json
"ParticlePanel"
{
  "ControlName" "CTFParticlePanel"
  "fieldName" "ParticlePanel"
  "xpos" "0"
  "ypos" "0"
  "zpos" "55"
  "wide" "f0"
  "tall" "f0"
  "visible" "1"
  "proportionaltoparent" "1"

  "ParticleEffects"
  {
    "0"
    {
      "particle_xpos" "c0"
      "particle_ypos" "c0"
      "particle_scale" "3"
      "particleName" "env_rain_001" // you can change particle name here
      "start_activated" "1"
      "loop" "1"
    }
  }

  "paintbackground" "0"
}
```

Here's a preview, as you can see, Sawmill's raining particle effects are present:

<iframe src="https://www.youtube.com/embed/mcF29ZhwWWg" allowfullscreen></iframe>

You can refer to the [VDC list of TF2 particles](https://developer.valvesoftware.com/wiki/List_of_TF2_Particles) for ideas on what particle names you can use.
