# Native Libraries
Disabling the Steam runtime is not enough to use native libraries on TF2 as the 
TF2 launcher script shades in some libraries.

Go to `GAME_FOLDER/bin` and delete `libSDL2-2.0.so.0`, and `libtcmalloc_minimal.so.4`. 
Now, Team Fortress 2 will not be able to load these libraries. The system will have to 
provide them, so make sure you have the 32-bit/multilib versions of gperftools and sdl2.

You're most likely not going to be VAC banned for this, since it isn't modifying 
any executables, just excluding some libraries. But they might have modified 
a library for VAC or something, so don't take my word for it.

# Disabling shader compilation on start
Although this config does allow for greater memory usage for the shader linking 
that is run on game launch, and removes outdated shader listings, some of you
may not want to wait at all for the shaders because your driver (Mesa) does not support
a shader cache.

Disabling the shader linking will decrease performance by a little and will increase
stutters as shaders are loaded on demand, or they may not work at all.

However, I think for long game runs, having shader linking disabled will result in better
performance over a long time, since useless shaders will never have to be loaded.

To disable this shader process, simple copy `glbaseshaders.cfg` and `glshaders.cfg` to
`GAME_FOLDER/tf/custom/mastercoms`. Say yes when prompted to overwrite `glbaseshaders.cfg`.

To re-enable the shader process, delete `glshaders.cfg` and overwrite `glbaseshaders.cfg` 
with the one provided in the main config folder.

