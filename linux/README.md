This is a guide to use native libraries for Team Fortress 2, as the launcher script shades in some libraries.

Go to `GAME_FOLDER/bin` and delete `libprofiler.so.0`, `libSDL2-2.0.so.0`, and `libtcmalloc_minimal.so.4`. Now, Team Fortress 2 will not be able to load these libraries. The system will have to provide them, so make sure you have the 32-bit/multilib versions of gperftools and sdl2.

You're most likely not going to be VAC banned for this, since it isn't modifying any executables, just excluding some libraries. But they might have modified a library for VAC or something, so don't take my word for it.
