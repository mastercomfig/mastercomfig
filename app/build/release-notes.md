App Changes:
* Fixed problems with the app attempting to run logic when it was not ready to do so
* Only attempt to auto-update on Windows
* The app no longer allows applying before the app is ready to apply
* Updated dependencies
* Scale various rate settings based on download and upload speed rather than using upload speed as a universal speed
* Scale `net_splitrate` based on upload speed and packet fragment count possibilities rather than just CPU speed
* Properly scale `cl_cmdrate` and `cl_updaterate` in relation to each other when speeds cap either
* Optimized network and data read usage by caching some config data at runtime
* Cleaned up console output
* Properly finish writing `client-modules.cfg` when scaling packet rates
* Fixed community configs not being able to be unsubscribed from
* Fixed SSDs not being detected on Windows

Config Changes:
* Boosted rate limits and increase the surge rate in order to take better advantage of your network at all times
* Improved CPU scaling for `net_splitrate`
* Reduced the memory threshold for aggressive low memory settings
* Added more memory reduction settings for low memory devices
* Make game overrides apply instantly on in-game module change
* Optimized characters a bit more for local servers on lower settings

Coming soon:
* Sharing
* Sync
* More custom values
* File caching and offline support
