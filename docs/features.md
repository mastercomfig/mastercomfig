---
description: A list of all mastercomfig features.
...

# Features

## Customization

* Fully compatible with custom scripts and configs
* Extensive commenting for different options
* Presets to easily fit your use case
* Extra optional customization settings
* Modular config system to allow for fast updating
* Extensive built-in addon system, providing support for null-canceling movement binds, transparent viewmodels, and more

## Bug Fixes

* Fixed blocky lightmaps not working on low quality
* Fixed match HUD not fully disappearing when disabled
* Fixed tournament settings lingering into local servers

## Rendering

* Threaded graphics
* Optimizations for modern systems
* Optimized LOD
* Optimized lighting
* Optimized shadows
* Optimized particles
* Optimized water
* Optimized post-processing effects
* Optimized anti-aliasing and texture filtering
* Optimized characters
* Optimized decals
* Optimized gibs
* Optimized props
* Optimized ropes
* Optimized OpenGL
* Optimized outlines

## Start up

* Cleaned up texture preload list
* Cleaned up client precache
* Cleaned up console output
* Increased memory for OpenGL shader cache
* Optimized OpenGL shader precache
* Optimized start up time

## Memory/IO

* Persistent LZMA buffer
* File system optimizations
* Fully async IO
* Optimized memory usage

## Networking

* Reduced latency of client commands (opening class menu, switching spectators, kill, MvM buyback and more!)
* Increased data rate
* Reduced choke
* Reduced packet loss and improved reliability
* Optimized prediction and interp systems for better hitreg
* Tuned client view smoothing
* Increased client timeout
* Increased max file size for extra content
* Templated customization of network settings per class
* Reduced overall overhead of networking system

## Sound

* Asynchronous sound playback
* Adjusted lip sync
* Minimized sound delay
* Improved sound performance
* Enhanced sound quality and spatialization
* Enhanced voice chat toggle feature, which acts instantly in a server and reduces bandwidth usage

## Input

* Optional same sensitivity for scope and other mouse enhancements for consistent input

# Security

* Prevents aimbots from joining local servers
* Prevents players from joining your party without your permission, spamming the party chat, causing lag and sound spam
* Optional mitigation of Steam game info leaking your IP address when in a local server
