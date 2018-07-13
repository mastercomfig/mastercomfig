App Changes:
* Added better handling of config versions
  * The previous behavior got the latest config data from a hard coded branch
  * New system:
    * Targets a specific commit tagged in a release based on the app's version
    * Some users will be assigned to target an alternative release channel at random
    * Release channel is noted in the about page for debugging purposes
* Simplified detection of GPU type (integrated or dedicated)
* Added support for number based dynamic config matching
* Fixed CPU speed detection using the current speed instead of the max speed
* Added dynamic config support for available memory and disk type (SSD or HDD)
* Fixed error handling for various connection attempts
* Fixed custom setting overrides not being applied last to `client-custom.cfg`
* Improved formatting and labeling for `client-custom.cfg`

Config Changes:
* Changed behavior of clean up commands to run after everything rather than at the end of the base config
  * This should resolve HUD errors from applying anti-aliasing as well as some minor memory usage issues
* Cleaned up the base config to remove settings that are handled by the dynamic config
* Optimized occlusion for Intel integrated graphics to reduce the impact of rendering many large entities
* Fine tuned CPU speed dynamic settings to take advantage of the new support for number based dynamic configs
* Added dynamic settings to scale memory options to their optimal values
* Added dynamic settings to change some disk options based on the disk type of where your TF2 folder is stored
  * Instead of applying SSD tuned settings to all disks, hard drives are now set to touch all loaded data and load collision data synchronously

Coming soon:
* Sharing
* Sync
* More custom values
* File caching and offline support
