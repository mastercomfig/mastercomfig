# Particle Panels

_Originally posted by [Puddy](https://steamcommunity.com/profiles/76561198177327375) on the huds.tf guide forums_

You can place any particle effect on the main menu by putting this into your `mainmenuoverride.res`:

```json
"ParticlePanel"
{
  "ControlName"	"CTFParticlePanel"
  "fieldName"		"TitleScreenRain"
  "xpos"			"0"
  "ypos"			"0"
  "zpos"			"-10000"
  "wide"			"f0"
  "tall"			"f0"
  "visible"		"1"
  "proportionaltoparent"	"1"

  "ParticleEffects"
  {
    "0"
    {
      "particle_xpos" "c0"
      "particle_ypos" "-20"
      "particle_scale"	"0.5" // you can change particle size here
      "particleName"	"env_rain_512x1792" // you can change particle name here
      "angles"	"0 0 20" // you can change particle angles here
      "start_activated" "1"
      "loop"	"1" // if the particle should expire
    }
    "1" // you can add multiple particles in the same panel
    {
      "particle_xpos" "c256"
      "particle_ypos" "-20"
      "particle_scale"	"0.5"
      "particleName"	"env_rain_512x1792"
      "angles"	"0 0 20"
      "start_activated" "1"
      "loop"	"1"
    }
  }

  "paintbackground"	"0"
}
```

Here's a preview, as you can see, Sawmill's raining particle effects are present:

<iframe src="https://www.youtube.com/embed/mcF29ZhwWWg" allowfullscreen></iframe>

You can refer to the [VDC list of TF2 particles](https://developer.valvesoftware.com/wiki/List_of_TF2_Particles) for ideas on what particle names you can use.

You can also use this in animations and anywhere else in your HUD.
