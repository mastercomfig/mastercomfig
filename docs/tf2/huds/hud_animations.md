# Using the HUD Animations Manifest

_Originally posted by omnibombulator on huds.tf_

Having a `hudanimations_tf.txt` file in your custom HUD has proved somewhat of a hassle in TF2 updates. It's the primary cause of most in-game crashes and bugs. Even an update that doesn't change much in the way of actual HUD elements could cause a problem if the `hudanimations_tf` file is outdated.

But there's a way to avoid this headache, so allow me to guide you through it.

`hudanimations_manifest.txt`, the magic file
When you extract the HUD from TF2 using GCFScape or this [handy GitHub](https://github.com/SteamDatabase/GameTracking-TF2/tree/master/tf/tf2_misc_dir), you'll find the file `hudanimations_manifest.txt` inside the `scripts` folder. This is the primary file we'll be using to get around avoiding HUD animation related crashes and having to update your `hudanimations_tf` file constantly to new updates.

The file is extremely simple, including no more than 6 lines of code:

```json
hudanimations_manifest
{

"file" "scripts/hudanimations.txt"
"file" "scripts/hudanimations_tf.txt"
}
```

`hudanimations_manifest` is the file that tells the game what files to read animations from. So, it reads from the default Source `hudanimations.txt` file and the TF2 `hudanimations_tf.txt` file. But we can add more files to this list. Our own files.

First up, go to your scripts folder, open the `hudanimations_tf.txt` file and copy any animations that have been modified in your HUD.
Commonly modified animations are Health Animations (`HudHealthBonusPulse`, `HudHealthBonusPulseLoop`, `HudHealthBonusPulseStop`, `HudHealthDyingPulse`, `HudHealthDyingPulseLoop`, `HudHealthDyingPulseStop`), Ammo Animations (`HudLowAmmoPulse`, `HudLowAmmoPulseLoop`, `HudLowAmmoPulseStop`) and Medic Animations (`HudMedicCharged`, `HudMedicChargedLoop`, `HudMedicChargedStop`).
Paste the modified code into a new text file. For the sake of example, save the file as hudanimations_custom.txt to the scripts folder. Now you have a custom animation file, brilliant!

Next step is to delete (or rename if you're unsure of if you've missed some modified code) the custom `hudanimations_tf.txt` file. We won't need this anymore, the game can read the original file from the `.vpk` the game includes from now on. This means the game will keep the animations up to date every time the game has an update that changes them!

Now it's time to go back to the `hudanimations_manifest.txt` file. We need to add the `hudanimations_custom.txt` file we created to it, so the game can read the animations from it.

Quite simply, just add an extra line **above** the `hudanimations_tf.txt` file value (as exampled below), then save the file:

```json
hudanimations_manifest
{

"file" "scripts/hudanimations.txt"
"file" "scripts/hudanimations_custom.txt"
"file" "scripts/hudanimations_tf.txt"
}
```

You can add as many different animation files as you like, so you can keep your Health, Ammo and Medic animations in separate files if you like it tidy that way! However, you must make sure that when you add extra files to `hudanimations_manifest.txt`, that you place them above `hudanimations_tf`, else they will not overwrite the default TF2 animation file.

If you've followed everything correctly, your custom animations should work, and the game will keep all future animations updated for you. Of course, if your custom animations get updated, you will have to manually update them, however, common animation modifications such as Health and Ammo are rarely updated.
