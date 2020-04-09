# How to install mastercomfig

1. [Download](https://mastercomfig.com/download) the mastercomfig VPK files of your choice.
2. Go to your Steam library and right click on Team Fortress 2.
3. Click Properties.
4. Click the Local Files tab.
5. Click Browse Local Files...
6. Navigate to the `tf/custom` folder.
7. Drag the VPK files into this folder.
8. Set these launch options: `-novid -nojoy -nosteamcontroller -nohltv -particles 1 -NoQueuedPacketThread +cl_clean_textures_on_death 1 +mat_lodin_time 0`. For more information, read [launch options customization guide](../customization/launch_options.md).

## Custom configs
If you have any of the following files, you will have to do some extra steps to get them to work with mastercomfig:

```
autoexec.cfg
scout.cfg
soldier.cfg
pyro.cfg
demoman.cfg
heavyweapons.cfg
engineer.cfg
medic.cfg
sniper.cfg
spy.cfg
```

1. Create a `user` folder where these files are located (most likely `tf/cfg`).
2. Drag these files into the newly created `user` folder.

## Next Steps

### Troubleshooting
Encountering any issues? See the [troubleshooting guide](../next_steps/troubleshoot.md) for help.

### Customization

Want to personalize your TF2 even further?

* See how you can [customize individual settings](../customization/custom_configs.md)
* Want to easily customize a bunch of settings at once? [Check out the modules system](../customization/modules.md)
* Tune your [launch options](../customization/launch_options.md) to get better performance and quality for your system
* Get inspired by other people's [custom configs](../customization/custom_configs.md)
* Take a look at some other [great TF2 modifications](../customization/see_also.md)
* [Optimize your OS](../os/index.md) to squeeze out even more performance
