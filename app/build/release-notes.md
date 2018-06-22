App Changes:

* Adjusted the color of the close window to be more visible
* Added mastercomfig logo to the titlebar
* The settings page now shows your current settings
* Fixed some issues with the speedtest display
* Increased the width on the TF2 folder selector to show full path
* Fixed presets setting module overrides


Config Changes:
* Improved memory management
* Started work on optimizing for specific platforms
* Optimized occlusion queries
* Module levels are no longer auto-completed in console in preparation for more modules (there is a cap to how many user defined auto-completions there can be, or else the engine crashes)
  * Modules still have console variables entries indicating what level they have been set to
  * Modules and their levels will continue to be listed in the `modules_help` command
