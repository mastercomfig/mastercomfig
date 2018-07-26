App Changes:
* Fixed page tracking and a few metric descriptions
* Fixed custom setting control being hidden on launch when enabled
* Fixed network scaling, especially for lower end connections
* Updated dependencies

Config Changes:
* Integrated texture filter settings into texture quality
* Added a custom setting for texture filtering under textures
* Reworked directory structure for user config files:
  * Modules, custom and class configs (without `_c`) can be put in `tf/cfg/user`
  * Added preliminary support for user config profiles
  * The old way with `_c` in `tf/cfg` will still work for now
* Added `mm_override` command so users can join Competitive Matchmaking without crashing
* Removed low violence settings

Coming soon:
* Levels and presets to tune for specific use cases like competitive play
* Sharing
  * Class configs
  * Key binds with UI and key-agnosticism 
  * Custom commands
  * Custom levels and presets
* Sync between different PC with profiles
* More custom values
* Initial scaling mechanisms for mastercomfig+ (free test-drive while in beta)
* UI revamp

