App Changes:
* Fixed problems with the app attempting to run logic when it was not ready to do so
* Performance optimations and fixes
* Optimized dark mode and dark mode switching
* Removed unused GPU detection process which was replaced in an older version by the dynamic data system 
* Only attempt to auto-update on Windows
* No longer allow applying before the app is ready to apply
* Updated dependencies
* Scale various rate settings based on download and upload speed rather than using upload speed as a universal speed
* Improved error notifications
* Added loading indicators where appropriate for page layouts
* Made the app single instance so subsequent launches only bring up the already open app
* Fixed dedicated graphics not being detected properly on hybrid GPU systems
* Scale rate settings based on risk factor and clearance from user behaviors at different speeds rather than linearly scaling rates
* Scale `net_splitrate` based on upload speed and packet fragment count possibilities rather than just CPU speed
* Properly scale `cl_cmdrate` and `cl_updaterate` in relation to each other when speeds cap either
* Optimized network and data read usage by caching some config data at runtime
* Added file caching support for config data and VPKs
* Added offline support after first cache
* Properly use file operations for increased performance and reduced errors
* Cleaned up console output
* Properly finish writing `client-modules.cfg` when scaling packet rates
* Fixed community configs not being able to be unsubscribed from
* Fixed SSDs not being detected on Windows
* Reworked app config to support profiles in the future
* Added analytics for hardware detection, config settings (preset, modules, customs) and app feature usage
* Added a news tab to communicate findings and streamed in app updates
* Fixed alternative channel remote config 

Config Changes:
* Tuned rate limit and surge rates by taking into account the risk factor and clearance for goodput
* Improved CPU scaling for `net_splitrate`
* Retuned balanced packet buffer settings based on latest server drop data
* Decreased packet compression threshold to one suitable for the client
* Fixed an issue where water would appear black on low quality
* Fixed several issues with detail overrides
* Removed user info entries because these are sent to the server
* Reduced the memory threshold for aggressive low memory settings
* Added more memory reduction settings for low memory devices
* Make game overrides apply instantly on in-game module change
* Optimized characters a bit more for local servers on lower settings

Coming soon:
* Sharing
* Sync
* More custom values
