# Particle Panels

_Исходно опубликовано [Puddy](https://steamcommunity.com/profiles/76561198177327375) на форумах руководств huds.tf_

Вы можете разместить любой эффект частиц в главном меню, поместив его в ваш `mainmenuoverride.res`:

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
      "particle_scale"	"0.5" // здесь можно изменить размер частиц
      "particleName"	"env_rain_512x1792" // здесь можно изменить имя частиц
      "angles"	"0 0 20" // здесь можно изменить углы поворота частиц
      "start_activated" "1"
      "loop"	"1" // если частица должна завершиться
    }
    "1" // можно добавить несколько частиц в одну панель
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

Вот предварительный просмотр, как вы можете видеть, эффекты дождевых частиц Sawmill присутствуют:

<iframe src="https://www.youtube.com/embed/mcF29ZhwWWg" allowfullscreen></iframe>

Вы можете обратиться к [списку VDC эффектов частиц для TF2](https://developer.valvesoftware.com/wiki/List_of_TF2_Particles) для идей, какие имена эффектов частиц вы можете использовать.

Вы также можете использовать это в анимациях и в любом другом месте вашего HUD.
