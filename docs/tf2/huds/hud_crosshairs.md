# In-Depth HUD Crosshair Guide

_Originally posted by omnibombulator on huds.tf_

This guide has been ported over from the old HUDS.TF Guides section. Credit for this Guide goes towards [Komorebi](https://www.steamcommunity.com/profiles/76561198048238506).

## Introduction

This part of the tutorial is a basic overview of what exactly a HUD crosshair is. More advanced users should skip ahead to [Implementation](#implementation).

Team Fortress 2's heads up display, or HUD as it is colloquially known, is a user interface, also known as a UI. It displays information relevant to the user while in-game, such as health, ammo, the scoreboard, and much more. It is controlled by text documents that determine positioning, size, visibility, color, and everything else about all of its moving bits and pieces. These documents, saved as `.res` files, can be edited by the user to change existing bits and pieces, which will henceforth referred to as controls, or, more interestingly, at least for our purposes, add new controls. One technique users have been using since as early as 2009 is to place a control into their HUDs to serve as a crosshair. That is, something that will tell them where the center of their screen is. There are two main methods of doing this: text crosshairs and image crosshairs.

### Text Crosshairs

The first method is to simply insert a text box into the HUD and then load a custom font which contains the crosshair of your choice. This method's advantages are that the crosshair’s color can be changed easily and it can be animated to change color upon damage (whenever you hit someone), a feature found in many of the Quake games, precursors to the TF series in several ways. For users searching for a more in-depth explanation of the custom font or who are interested in creating their own font, skip ahead to [Creating Your Own Crosshairs](#creating-your-own-crosshairs).

### Image Crosshairs

The second method is to simply insert an image file into the HUD. The advantages this method brings are that the size of the crosshair can be changed easily and it can be toggled (turned on or off at will) in a couple ways that text crosshairs can't be. If you are fairly experienced with these crosshairs you might know about the method of implementing them as in game crosshairs, in which case you would want to skip ahead to [In-Game Image Crosshair](#in-game-image-crosshair).

## Implementation

For both methods the crosshair is created by inserting a new control in `HudLayout.res`. There are several other steps that must be taken as well to ensure that your crosshair functions as intended. Everything that is necessary for both crosshairs is listed below. 

### Text

1. Add the physical font file to `resource` or `resource/fonts`.

2. Reference the font file at the very bottom of `ClientScheme.res` in the section entitled "CUSTOM FONT FILES". Make sure the numbers are in ascending order (1 then 2 then 3 etc.).
    ```json
    }
    "6"
    {
    "font" "resource/TF2Build.ttf"
    "name" "TF2 Build"
    "russian"
    {
    "range" "0x0000 0xFFFF"
    }
    "polish"
    {
    "range" "0x0000 0xFFFF"
    }
    "turkish"
    {
    "range" "0x0000 0xFFFF"
    }
    }
    "7"
    {
    "font" "resource/fonts/crosshairs.ttf"
    "name" "crosshairs"
    }
    ```

3. Create a definition for the font in `ClientScheme.res` under the section entitled "FONTS", which is pretty early in the file.
    ```json
    //
    //////////////////////// FONTS /////////////////////////////
    //
    // describes all the fonts
    Fonts
    {
    // fonts are used in order that they are listed
    // fonts listed later in the order will only be used if they fulfill a range not already filled
    // if a font fails to load then the subsequent fonts will replace

    "fogCrosshair"
    {
    "1"
    {
    "name" "Crosshairs"
    "tall" "28"
    "additive" "0"
    "antialias" "1"
    "weight" "0"
    "outline" "1"
    }
    }
    "fogCrosshairSmall"
    {
    "1"
    {
    "name" "Crosshairs"
    "tall" "24"
    "additive" "0"
    "antialias" "1"
    "weight" "0"
    "outline" "1"
    }
    }
    "fogCrosshairSmooth"
    {
    "1"
    {
    "name" "Crosshairs"
    "tall" "28"
    "additive" "0"
    "antialias" "1"
    "weight" "0"
    "outline" "1"
    }
    }
    ```

4. Create the control in `HudLayout.res`, examples are below under [Examples](#Examples).

Example:

```json
"TextExample"
{
"controlName" "CExLabel"
"fieldName" "TextExample"
"visible" "1"
"enabled" "1"
"visible_minmode" "1"
"enabled_minmode" "1"
"xpos" "c0"
"ypos" "c0"
"zpos" "0"
"wide" "100"
"tall" "100"

"font" "fogCrosshair"
"labelText" "+"
"fgcolor" "White"
"textAlignment" "center"
}
```

### Image

1. Save the image file you would like to use as a `.vtf` or Valve Texture Format file and make sure there is an accompanying `.vmt`, or Valve Material Type file that has the same name. If you are using someone else’s work this is most likely done.

2. Make sure the `.vmt` file references the correct `.vtf`. The `.vmt` should look like this:
    ```json
    "UnlitGeneric"
    {
    "$translucent" 1
    "$basetexture" "vgui/replay/thumbnails/<your file name>"
    "$yertexcolor" 1
    "$no_fullbright" 1
    "$ignorez" 1
    }
    ```
    `<your file name>` needs to be the same as the name of the `.vmt` and the `.vtf`, to clarify.

3. Create a copy of both files and move the copies into `custom/<any name>/materials/vgui/replay/thumbnails`.

4. Either create the control in `HudLayout.res` if you want to use the crosshair that way or reference it in console as an in-game crosshair. If you wish to pursue the second option then skip ahead to [In-Game Image Crosshair](#in-game-image-crosshair).

Example:

```json
"ImageExample"
{
"controlName" "CTFImagePanel"
"fieldName" "ImageExample"
"visible" "1"
"enabled" "1"
"visible_minmode" "1"
"enabled_minmode" "1"
"xpos" "c0"
"ypos" "c0"
"zpos" "0"
"wide" "100"
"tall" "100"

"alpha" "255"
"image" "replay/thumbnails/*your file name*"
"scaleimage" "1"
}
```

## Customization

### Changing Your Crosshair

Let’s say you find a crosshair that you love, but it’s just a tad too big. Or maybe it’s a little too green for your taste. This is solved by editing the parameters in the control you put in `HudLayout.res`. After each change you should open up the [developer console](https://developer.valvesoftware.com/wiki/Developer_Console) and type the command “hud_reloadscheme”. This will reload all of the HUD files and apply your changes. In this way you can see the effects of your edits without needing to restart the game. Running TF2 in windowed no border at your resolution makes alt-tabbing in and out of game quicker and easier so I’d recommend that as well. How do you actually change anything, you say? Below is an explanation of how you can tweak your crosshair’s size, color, and positioning.

### Resizing

For image crosshairs, this is as simple as editing the wide and tall values in the control. For text crosshairs, the size of the text you have created is determined by the font definition in `ClientScheme.res`. You will need to edit the existing definition, or, more efficient, create a new one that’s a little different. Here’s how.

![Text crosshair resizing](../../assets/images/tf2/huds/hud_crosshairs/resizing.png)

Thanks to Lange for letting me [point you to his explanation](https://www.youtube.com/watch?v=FR6xYFTNDAA). Antialiasing is pretty different in fonts, and doesn't always work, so try enabling/disabling it yourself and see.

In addition to antialiasing, you might want to change `"outline"` to `1`, which will put a black outline around your crosshair. It might be a bit buggy or pixelated, however, so, same as your crosshair, test out enabling and disabling it for optimum results.

Back to resizing. Something a lot of HUD makers do to make things easier is to create many definitions for the same font. This is because the only way to change the size of a font is to change the font definition. So, an easy shortcut is to name each definition according to the size it is. For example, make one called `crosshair12`, with the `tall` value being `12`, another named `crosshair14` with the `tall` value of `14`, all the way up to `54`, which is the highest tall value that TF2 accepts. This is useful because TF2 doesn’t reload `ClientScheme.res` (or the main menu, for that matter, if you're interested) when you type `hud_reloadscheme` in console, so you need to restart the game each time you change `ClientScheme.res`. By creating lots of font definitions you can test out new sizes for text boxes without restarting the game.

### Changing Color

This time, the roles are reversed. Text crosshairs are easy, and image crosshairs are hard. To change the color of a text crosshair all you have to do is change the value of `fgcolor`. I elaborate on how exactly to change `fgcolor` below under Specific Parameters. For image crosshairs, it is significantly more difficult: you need to actually edit the `.vtf` file itself and change the color in an image editor. This requires VTFEdit to convert your `.vtf` to a `.png` or any other editable file type, then editing it in Photoshop or something similar. More information on this can be found in the section below entitled [Creating Your Own Crosshairs](#creating-your-own-crosshairs).

### Changing Position

Shifting the position is as simple as changing the `xpos`, `ypos`, and `zpos` under the control in `HudLayout.res`. This includes if you want to put your crosshair underneath something else, like an outline for the in-game ones. More information on these parameters below [under Basic Parameters](#xpos).

### Fixing Cut Off Issues

Having a problem with your HUD crosshair being cut off? If you are, then there are three possibilities. One: if you’re using an image crosshair, that the file was saved incorrectly in VTFEdit. If you made your crosshair yourself this is entirely possible, if you didn’t make it (and you’ve seen screenshots of what it’s supposed to look like) this isn’t the case. Two: if you’re using a text crosshair, it’s possible that the `wide` and `tall` values under your control are too small, and that the text is being cut off. This is explained in the image below.

![Examples of text cutoff issues in box containers](../../assets/images/tf2/huds/hud_crosshairs/cutoff.png)

So, increasing the `wide` and `tall` values might fix your problem. The third possibility is only relevant if it’s a text crosshair and you’re using macOS or Linux; sometimes fonts get cut off in TF2 on macOS/Linux: this is due to differences in how Windows handles fonts compared to these operating systems, and therefore how TF2 expects its fonts to be handled. It’s on Valve’s end, and the only solutions are to realign the characters in a font editor or to convert it to an image crosshair.

## Parameters

Below I will give an explanation of what each parameter under the control does. More experienced users might want to jump to [Specific Parameters](#specific-parameters) to skip the basic parameters.

### Basic Parameters

These are the basic parameters which are relevant to both image and text crosshairs. I would recommend scrolling back up to check the examples above if you're confused at any point, to remind yourself what the whole picture looks like.

#### ControlName

This refers to what type of control you're creating. To reiterate, control is just a fancy name for the bits and pieces of your HUD: each control is simply an element or part of the interface that contains text, an image, or any variety of things. There are three basic types of controls but only two are relevant for the purpose of HUD crosshairs.

**Labels:** These are text boxes. The two basic types are `Label` and `CExLabel`.

**Panels:** Pictures and blocks of color. For our purposes basically just images. The basic types are `ImagePanel` and `EditablePanel`.

The third type, which is not relevant for our purposes, is Buttons. These are clickable elements composed of either a text box, and image, or both. Buttons are not commonly used to create crosshairs. The basic types are `Button`, `ImageButton`, `CExButton`, `CExImageButton`.

#### FieldName

Simple, the name of the control. Can only contain letters and numbers and must be the unique name of the control. If you're editing an existing control don't touch this.

#### Visible

This determines whether the control is drawn. As one would expect, `1` means visible, `0` means invisible.

#### Enabled

This determines whether the control is even loaded. The difference between this and visible is that some elements are turned on or off by the game. Disabling these elements means they're never going to be seen. Making them invisible might mean that they're seen part of the time. For HUD crosshairs the distinction doesn't matter. Turn either to `0` to make it invisible and `1` to make it visible. There is one notable exception which will be discussed later in the [3D Player Model Background section](#3d-player-model-background).

#### Xpos

This parameter determines the position in the x direction of the left side of the control relative to the parent control. Basically, how far to the right or left. Another way of thinking about it is that changing this value moves the crosshair horizontally. For HUD crosshairs the parent control is usually simply the HUD, in which case the crosshair is positioned relative to the screen. By default the numbers are how far away from the left side of the screen. Adding a `c` in front means that the control is placed relative to the center of the screen. Adding an `r` in front means that the control is positioned relative to the right side of the screen. This parameter accepts negative values, which are flipped around, as you would expect, by adding an `r`. Minus values can also be used, by adding `-` before the value.

![xpos guide](../../assets/images/tf2/huds/hud_crosshairs/xhairguide_xpos.jpg)

#### Ypos

This parameter determines the position of the top of the control relative to the parent control in the y direction. In other words, up or down, or in the vertical direction. By default it is from the top of the screen. Adding a `c` as a prefix measures from the center, an `r` prefix measures from the bottom of the screen. This parameter accepts negative values, which are, again, flipped by adding an `r`.

#### Zpos

This parameter determines the position of the control in the z-direction, also known as into or out of the board. More colloquially, this determines whether or not your crosshair is behind or in front of other stuff, or determines which layer the control is located in. The way this works is that controls are drawn by the game in order from lowest to highest, so the control with the most negative `Zpos` will be drawn first, then the least negative progressively, the least positive, finally the most positive. The higher the `Zpos`, the further forward the control, or the more stuff it will be on top of. The lower, the further away the control, or the more stuff it will be below.

#### Wide/Tall

The width and height of the control. Text will need to be completely contained within the control or parts of it may be cut off. For images, this simply resizes the image. You cannot resize a text crosshair this way, you need to change the font definition in `ClientScheme.res` or reference a different font, more on that available in [Resizing](#resizing). If your crosshair is half-visible, this could be the reason. Putting `f0` gives you the full screen size.

### Specific Parameters

As you can see, this is where more differences start to arise in the implementation of image crosshairs and text crosshairs.

#### Text

##### Font

This is the name of the font file that you wish to use. The font file should be defined in `ClientScheme.res`. You check out more about installing fonts by reading our [Font Installation guide](font_crosshairs.md).

##### LabelText

This is what the text box will actually say. In our case this means which crosshair in the font file is referenced. For example, here is an image of the crosshairs included in [Fog's Custom Crosshair Pack](https://www.teamfortress.tv/14702/release-fogs-crosshairs-v3).

![A list of Fog's crosshairs and their LabelText](../../assets/images/tf2/huds/hud_crosshairs/fogscrosshairs.png)

##### FgColor

This stands for foreground color and is the color that you will see your text as. The syntax for this parameter is `R G B A`, with `R` meaning Red, `G` being Green, `B` being Blue, and `A` being Alpha. Alpha determines how transparent the color is, but it sometimes doesn’t function correctly in TF2 for custom crosshair fonts, not sure why. For setting the colors, the accepted values are any integer from `0` to `255`. Each number determines how much of that color is present. So, `255 0 0 255` would mean the text will be all red, `255 255 0 255` would mean the text would be equal parts red and green and so would manifest itself as yellow. You can also simply reference the name of a color which is installed in `ClientScheme.res`. Colors are defined at the beginning. As you can see all colors are defined by the code I explained above:

```json
Colors
{
"Orange" "178 82 22 255"
"OrangeDim" "178 82 22 120"
"LightOrange" "188 112 0 128"
"GoalOrange" "255 133 0"
"TFOrange" "145 73 59 255"

"White" "235 235 235 255"
"Red" "192 28 0 140"
"RedSolid" "192 28 0 255"
}
```

![An overview of different color values](../../assets/images/tf2/huds/hud_crosshairs/hudxhair_color.png)

##### TextAlignment

This parameter has two sets of accepted values: left-right values and up-down values. First off, here are the left-right values: `East`, which represents alignment to the right, `West`, which represents alignment to the left, and `Center`, which is self explanatory. Now, for the up or down: `North` for up, `South` for down. Another, simpler way to explain is that this property uses the cardinal directions for values, as well as `Left` and `Right`. To enter more than one alignment you must use the cardinal directions with the vertical alignment first, for example `North-West` for top left alignment. Basically, think of the text as being inside of a box. The box is what the control creates, more accurately what the control actually is, and you define the wide and tall values for it. `Center` would make the text aligned to the center of the box. `West` would put it on the left side of the box. `East` would put it on the right side of the box. For controls which contain dynamic text such as your health and ammo, changing the alignment is very useful.

![An overview of various box alignment](../../assets/images/tf2/huds/hud_crosshairs/alignment.png)

As you can see in the images on the right, if you align the ammo in clip to the West (like the top two images) then it can clash with the ammo in reserve if the amount of ammo loaded changes, for example the medic has 40 needles loaded at once while the soldier has 4 rockets. You can see the problem. Aligning the ammo in clip to the east (like the bottom two) fixes the problem, now it can’t ever clip.

#### Image

##### Alpha

This is the equivalent of the fourth value in fgcolor, if you remember that. If not, it’s essentially a numerical value for transparency, `0` being so transparent that it’s invisible and `255` being 100% visible, not transparent at all.

##### Image

This tells the game where the file that is going to be loaded is. You simply put the file directory here and the game will look there for a `.vmt` file named appropriately and will then load the `.vtf` referenced by that `.vmt`.

##### ScaleImage

As far as I can tell this is either broken or doesn’t do anything, I’ve never seen any difference when I enabled it or disabled it.

## Creating your own Crosshairs

First of all you need to decide if the crosshair you want to create is an image or a text crosshair.

This is a distinct advantage of image crosshairs, it’s significantly easier to create your own. All you need to do is open up Photoshop, or, if you don’t have it, a great free alternative like [Krita](https://krita.org/) or [GIMP](http://www.gimp.org/). Then simply create your crosshair or open up an image of one from another game and save it as a `.png` or a `.jpg`.

### Using GIMP

Here are some useful tips for using GIMP to create a crosshair if you don't have experience with the application.

1. First, go to File > New to create a new file. You are going to want your dimensions to be a square power of 2.
    ![Powers of 2](../../assets/images/tf2/huds/hud_crosshairs/pow2.png)
    I usually use 1024 by 1024 or 512 by 512, a square file is easier to center regardless of crosshair shape so I'd advise making it square.

2. Before you hit "OK" go to the arrow near "Advanced Options", click it, then go to "Fill With" and select "Transparency" from the drop-down menu.

3. Now you have your canvas on which to create your crosshair.

4. The very basics are this: create a selection and fill it with a color. To this end, some useful tools are the selection tools, rectangle, ellipse, free select, etc.

Here are some tips and tricks to using these tools:

* First off, whenever you are using a tool it's a good idea to have the "Tool Options" window open. If you don't see it go up to Windows > Dockable Dialogs > Tool Options. This is extremely useful.

* For making a circle be uniform/perfect you can simply set aspect ratio to be 1:1 or change the dimensions manually in the same (Tool Options) window. Obviously the same can be used to mess with a rectangular selection/make it square.

* If you are copying and pasting/editing a pre-existing crosshair an extremely useful tool is the "Select By Color" tool. It selects all pixels in the image of the color that you click on.

* For any of these selection tools it's useful to be able to subtract or add to it easily, so take note of the buttons at the top of the "Tool Options" window: they change the mode of selection you are currently in, from making a new selection to adding/subtracting/intersecting with the current one. For example, to make a ring you make a circle then change the mode to subtract from selection and put a smaller circle inside. There are an abundance of GIMP tutorials on the subject, and a video does it much better than I can. Another example is that maybe selecting by color didn't get everything you hoped it would. Change to "Add to Selection" and you can easily add different shades of the same color which you want to include that weren't picked up.

* Another useful trick for selecting by color is that if there is an image and you want to effectively get rid of a inform background you can select the background then hit Edit>Clear to send it to transparent or Select > Invert to invert the selection, effectively selecting every pixel in the image that is NOT the color you selected. The invert selection button is immensely useful in multiple other ways as well.

* One more useful tool is "Align" to align your selection or layer to the center of the image for the easiest time making a multiple layered image look neat. For example, to make the backgrounds to the health cross I [used in my HUD](https://imgur.com/a/d05Th).
  I made a circle selection, went to tool options, changed the size to 300 x 300, went to align tool, center aligned it, then filled the whole thing with blue or black or whichever. Then I made a rectangular selection, made it 75 x 200 ( I think, don't quite remember), centered it with the align tool. Then I went to edit>clear to send that rectangle in the middle to transparent. Then I made another rectangular selection, 200 x 75 this time, and center aligned it, then "cleared" that one as well. The result satisfies my perfectionistic (is this a word?) OCD tendencies.

### Export 

From here you can either use the [VTF Photoshop/Paint.NET plugin](https://gamebanana.com/tools/6791) or the [GIMP VTF plugin](https://developer.valvesoftware.com/wiki/GIMP) to export to a `.vtf` file. If you prefer, there is also [VTFEdit](https://developer.valvesoftware.com/wiki/VTFEdit). VTFEdit is what I'm going to be using in my example and works with any image editor so if you want me to walk you through it I suggest you get that.

Your next challenge is successfully changing the settings so that your crosshair doesn't look bad in game. The method of changing your image to a `.vtf` that I'm familiar with is VTFEdit, so that's what I'm going to be using in my examples. I'm fairly sure both plugins are similar to VTFEdit when it comes to settings but I'm not certain.

As a side note, all of what I'm saying below about VTFEdit is applicable to all custom materials, not crosshairs.

#### VTFEdit Settings

1. Hit File>Import
2. Navigate to the image you created and hit import.
3. In the "import settings" window you are going to want to change tabs to "General" if you aren't already there and use the following settings:


##### Import Settings

**Normal Format:** DXT5
**Alpha Format:** DXT5
**Texture Type:** shouldn't really matter for most, use "Environment Map" just in case.


Resizing is interesting. VTF files need to have specific dimensions. They need to be a square power of 2. Remember above, when I said to create the new file to have a square power of 2? 1024x1024 or 512x512? This was why. The ideal scenario is that you did as I suggested, in which case your crosshair will not be distorted at all.

**Resize:** un-tick

**Resize Filter:** n/a

**Sharpen Filter:** n/a


If you used someone else's image, or for whatever reason the dimensions are wrong/not a square power of 2, then you will want to use these settings below.

**Resize:** Nearest power of 2

**Resize Filter:** Box

**Sharpen Filter:** None


**Clamp:** un-tick

**Mipmaps:** un-tick

**Normal Maps:** un-tick

To confirm, it should look like this:

![Import settings window](../../assets/images/tf2/huds/hud_crosshairs/import.png)

Now you are done with Import Settings and can hit "OK". The next thing you need to do is to make sure the correct flags are checked under "Image" in the tab to the left. You want the following to be checked (some of them might already be done):

##### Flag Settings

**point-sample**

**SRGB**

**Clamp-s**

**Clamp-t**

**no mipmaps**

**no level of detail**

**8-bit alpha**

Then click on "save as" and name it whatever you wish. The `.vtf` will eventually need to be placed in `custom/<any folder name>/materials/vgui/replay/thumbnails` (this is because for whatever reason that file directory is not checked by `sv_pure` so it will work on any server, so you can save it there now if you wish. Now you're done with the `.vtf`!

Your next task is to create a `.vmt` file to accompany your `.vtf`. I The `.vmt` is just a text document that lets the game know how to use the `.vtf`. It is the `.vmt` file that the game actually looks at, not the `.vtf`.  personally don't use VTFEdit's function to create your own `.vmt` as I do it by hand but you certainly can do so if you wish. It is under Tools > Create VMT File. If you use it you simply select your saved `.vtf` as the base texture. If you wish to do it by hand, simply make a new text document and paste this in:

```json
"UnlitGeneric"
{
"$translucent" 1
"$basetexture" "vgui\replay\thumbnails\<your file name>"
"$yertexcolor" 1
"$no_fullbright" 1
"$ignorez" 1
}
```

For more advanced users: there are many interesting things that can be done with VMTs, such as making everything beneath it transparent, or making it spin or change color when you are moving. More info on that can be found [here](https://developer.valvesoftware.com/wiki/List_Of_Material_Proxies). To note: I couldn't personally get the proxy `PlayerDamageTime` to work at all, which is disappointing because if it had worked one could create a material in their HUD that would change color or become visible only when the player had crit-heals. I personally was going to make an outline for the health cross, or a bar under the health, although something near the crosshair would be cool too. JarateKing, who knows much more about material proxies than I do, likewise failed, so that particular proxy might not work in TF2, unfortunately.

Here is an example `.vmt` where the crosshair would rotate, pulse blue, and flash green when you are moving:

```json
"UnlitGeneric"
{
"$translucent" "1"
"$basetexture" "vgui\replay\thumbnails\crosshair_kent_010"

"$angle" "0.0"
"$translate" "[0.0 0.0]"
"$center" "[0.5 0.5]"

"$color" "[0.0 0.0 0.0]"
"$speed" "0"

"$vertexcolor" "1"
"$no_fullbright" "1"
"$vertexalpha" "1"
"$ignorez" "1"

"Proxies"
{
// Rotates the crosshair
"LinearRamp"
{
"rate" "600" // Adjust this, higher spins faster
"initialValue" "0.0"
"resultVar" "$angle"
}
"TextureTransform"
{
"translateVar" "$translate"
"rotateVar" "$angle"
"centerVar" "$center"
"resultVar" "$basetexturetransform"
}

// Makes the crosshair pulse blue
"Sine"
{
"sinemin" "0.3"
"minemax" "0.5"
"sineperiod" "1"
"resultVar" "$color[2]"
}

// Makes the crosshair light up green when the player is moving
"PlayerSpeed"
{
"resultVar" "$speed"
}
"Clamp"
{
"min" "0.5"
"max" "1.0"
"srcVar1" "$speed"
"resultVar" "$color[1]"
}

// Enable animation in the crosshair, set framerate
//"AnimatedTexture"
//{
// "animatedtexturevar" "$basetexture"
// "animatedtextureframenumvar" "$frame"
// "animatedtextureframerate" "30"
//}
}

}
```

![Animated crosshair GIF 1](../../assets/images/tf2/huds/hud_crosshairs/animated_crosshair1.gif)

More info on this specific crosshair found in [this YouTube video](https://web.archive.org/web/20200131151610/https://www.youtube.com/watch?v=KPYGwAij9JY).

Another example:

![Animated crosshair GIF 2](../../assets/images/tf2/huds/hud_crosshairs/animated_crosshair2.gif)

More info on this specific `.vmt` including a download link can be found [here](https://www.reddit.com/r/truetf2/comments/26op93/more_intricate_crosshairs_colourchanging_flashing/).

Here is an example `.vmt` where it would mask everything beneath it and make it transparent, which can be used to make anything in your HUD partially transparent, even your viewmodels.

```json
"Refract"
{
"%keywords" "tf"
"$refractamount" "0.0"
"$refracttint" "{255 255 255}"
"$refractblur" "0.0"

"$scale" "[1 1]"
"$normalmap" "vgui/replay/thumbnails/REFRACTnormal"
}
```

![Transparent viewmodels](../../assets/images/tf2/huds/hud_crosshairs/transparent_viewmodels.png)

[Here](https://www.teamfortress.tv/21928/transparent-viewmodels-in-any-hud) is more information on transparent viewmodels with this method.

The path to create your own text crosshair is one I confess I personally have never done. I do, however, understand the basic concept. What you will need to do is to create a vector image of the crosshair that you want to use, the application to use for that is probably Adobe Illustrator, a free application I have used is [Inkscape](https://www.inkscape.org/), which is compatible with GIMP. I wouldn’t highly recommend Inkscape but you can easily Google alternatives yourself. Then get your hands on a font editor, [FontForge](https://fontforge.org/) probably being the best, although there are many other alternatives. Import your vector image into your custom font and save it as a `.ttf` or `.otf` and voíla. Google will need to be your friend on this one as I cannot help you much, sorry.

## Toggling

Toggling your HUD crosshair means turning it on or off at will. Essentially, you could implement it into a crosshair switcher, such as the one made by [cfg.tf](https://cfg.tf/). Or you could only enable it for certain classes. The possibilities are only limited by the fact that there are only two ways to make a HUD crosshair visible/invisible at will, however, there is another method to turn one on or off by class.

### Minmode

This is the “traditional” method to toggle a HUD crosshair on or off because it’s very easy to modify your HUD if you already have a HUD crosshair to implement this. All that is necessary is to change the parameters of `visible_minmode` and `enabled_minmode` to `0` on one crosshair and `1` on the other and to change the parameters of `visible` and `enabled` to `1` on one crosshair and `0` on the other. It will look like this:

```json
"TextExample"
{
"controlName" "CExLabel"
"fieldName" "TextExample"
"visible" "1"
"enabled" "1"
"visible_minmode" "1"
"enabled_minmode" "1"
"xpos" "c0"
"ypos" "c0"
"zpos" "0"
"wide" "100"
"tall" "100"

"font" "fogCrosshair"
"labelText" "+"
"fgcolor" "White"
"textAlignment" "center"
}

"ImageExample"
{
"controlName" "CTFImagePanel"
"fieldName" "ImageExample"
"visible" "1"
"enabled" "1"
"visible_minmode" "1"
"enabled_minmode" "1"
"xpos" "c0"
"ypos" "c0"
"zpos" "0"
"wide" "100"
"tall" "100"

"alpha" "255"
"image" "replay/thumbnails/<your file name>"
"scaleimage" "1"
}
```

In this example, `ImageExample`, the image crosshair, would only be visible when minmode is on, or, when `cl_hud_minmode` is set to `1`. On the other hand, `TextExample`, the text crosshair, would only be visible when minmode is off, or, when `cl_hud_minmode` is set to `0`. In this way you can use a console command to turn your crosshair on or off as you please. However, this is the method that I referenced earlier as being by class, meaning I recommend putting the command in your class configs to turn the crosshair on or off based on which class you are. The reason is that toggling this command causes in-game stutter, which makes sense: after all, the command is essentially telling the game to reload every single HUD file, similar to a `hud_reloadscheme`.

### Achievement Tracker

This method is a bit more complicated, but the concept remains simple. Basically, TF2 has the capacity to display information about your progress on an in-game achievement of your choice, and you can toggle this feature on or off with a console command. To use this with a crosshair all you need to do is edit the file that controls the panel that tracks an achievement. Essentially you remove the parts concerning achievements and replace them with your crosshair, which is now contained in a control which is toggleable with the console command `hud_achievement_tracker` (`1` for on, `0` for off, as is standard).

You’re going to want to replace the contents of your `HudAchievementTrackerItem.res` with this:

```json
"Resource/UI/HudAchievementTrackerItem.res"
{

//crosshair start


//crosshair end

  "HudAchievementTrackerItem"
  {
      "ControlName"   "EditablePanel"
      "fieldName"     "HudAchievementTrackerItem"
      "xpos"          "0"
      "ypos"          "0"
      "zpos"          "999"
      "wide"          "f0"
      "tall"          "480"
      "visible"       "0"
      "enabled"       "1"

      "PaintBackgroundType"   "2"
  }
     
  "AchievementName"
  {
      "ControlName"   "Label"
      "fieldName"     "AchievementName"
      "labeltext"     ""
      "xpos"          "9999"
      "ypos"          "9999"
      "wide"          "170"
      "tall"          "10"
      "zpos"          "4"
      "textinsetx"    "5"
      "font"          "AchievementTracker_Name"
      "textAlignment"     "north-west"
  }
     
  "AchievementNameGlow"
  {
      "ControlName"   "Label"
      "fieldName"     "AchievementNameGlow"
      "labeltext"     ""
      "xpos"          "9999"
      "ypos"          "9999"
      "wide"          "170"
      "tall"          "10"
      "zpos"          "4"
      "fgcolor_override"      "235 226 202 255"
      "font"          "AchievementTracker_NameGlow"
      "textinsetx"    "5"
      "textAlignment"     "north-west"
  }
     
  "AchievementDesc"
  {
      "ControlName"   "Label"
      "fieldName"     "AchievementDesc"
      "labeltext"     ""
      "xpos"          "9999"
      "ypos"          "9999"
      "wide"          "120"
      "tall"          "18"
      "zpos"          "4"
      "textinsetx"    "5"
      "fgcolor_override"      "235 226 202 255"
      "font"          "AchievementTracker_Desc"
      "wrap"          "1"
      "TextAlignment"     "north-west"
  }
     
  "ProgressBarBG"
  {
      "ControlName"       "ImagePanel"
      "fieldName"     "ProgressBarBG"
      "xpos"      "9999"
      "ypos"      "9999"
      "wide"      "100"
      "tall"      "6"
      "fillcolor"  "250 234 201 51"
      "zpos"          "4"
      "visible"       "1"
      "enabled"       "1"
  }
     
  "ProgressBar" // current completed
  {
      "ControlName"   "ImagePanel"
      "fieldName"     "ProgressBar"
      "xpos"          "9999"
      "ypos"          "9999"
      "wide"          "0"
      "tall"          "6"
      "fillcolor"     "251 235 202 255"
      "zpos"          "5"
      "visible"       "1"
      "enabled"       "1"
  }
}
```

and find and replace the information about `HudAchievementTracker` in `HudLayout.res` with this:

```json
"HudAchievementTracker"
      {
              "ControlName"   "EditablePanel"
              "fieldName"             "HudAchievementTracker"
              "xpos"                  "0"
              "NormalY"               "0"
              "EngineerY"             "0"
              "wide"                  "f0"
              "tall"                  "480"
              "visible"               "1"
              "enabled"               "1"    
              "zpos"                  "1"
      }
```

Then paste the control for your crosshair into the section in the first link entitled `crosshair`. More information can be found at [this link](https://www.teamfortress.tv/4134).

### 3D Player Model Background

This method is fairly simple but a lot of users have troubles with it for whatever reason. Basically: Valve added a feature to use, instead of the default class image, a dynamic and 3D player model complete with accurate weapons, hats, and running/swimming postures. Due to performance issues, Valve added a console command to toggle the feature on or off. By replacing the background that accompanies, by default, this feature, with our own image crosshair, we can then toggle the crosshair on or off at will. I would recommend only using this method if you can live without the 3D model. If you do wish to use it, all that is necessary to do this is to replace the following control in `HudPlayerClass.res` with your crosshair.

![3D player model code](../../assets/images/tf2/huds/hud_crosshairs/3dplayermodel.png)

So, using my previous example image crosshair, it would look something like this:

```json
"classmodelpanelBG"
{
"ControlName" "CTFImagePanel"
"fieldName" "classmodelpanelBG"
"visible" "0"
"enabled" "1"
"visible_minmode" "0"
"enabled_minmode" "1"
"xpos" "c0"
"ypos" "c0"
"zpos" "0"
"wide" "100"
"tall" "100"
"alpha" "255"
"image" "replay/thumbnails/*your file name*"
"scaleimage" "1"
}
```

The only thing to be careful about is that you have `visible` set to `0` and `enabled` set to `1`. As explained under their respective sections under Basic Parameters, this ensures that you can actually turn it off or on. If `enabled` and `visible` are both set to `0` your crosshair will never show up because it will never be loaded by the HUD. If both are set to `1` then the crosshair will always be visible and you won’t be able to truly "toggle" it on and off.

Another thing you may want to do is scroll down a little bit in `HudPlayerClass.res` and change `xpos` to `9999` under `"classmodelpanel"`. This will move the actual 3D model off the screen so it doesn't turn on and off too. This way only your crosshair will be visible.

### In-Game Image Crosshair

It turns out, by using the console, that you can actually reference one of your images that you’ve saved to the directory `materials/vgui/replay/thumbnails` as an in-game crosshair. That is, it's possible to "trick" the game into using your image instead of a default crosshair. This allows you to modify it using the Options window (or console commands) to control color and size. You cannot, however, switch between your new custom crosshair and other default ones.

All you need to do to use this method if you so desire is to make sure the .vtf and the accompanying .vmt are correctly created and placed and then type in console the following:

```c
cl_crosshair_file ../replay/thumbnails/<crosshair name>
```

Make sure to replace `<crosshair name>` with the name of your file and double-check that you have set up the .vmt file correctly. The only other weird restriction is that, although it will work on servers with `sv_pure`, you need to load it up in a server without `sv_pure` first. As soon as you’ve done this you’re good to join any server and your crosshair should remain, at which point you can change the color with console commands or a crosshair switching script. You could make it bigger and red for your melee and smaller and red for your primary, for example, or have it change to a different color for every direction that you move [like stabby does](https://web.archive.org/web/20170603051403/http://forums.steampowered.com/forums/showthread.php?t=1591457).


## Postnotes

The explanation images were all created using the font “Novecento” as an example, this is the font that Garm3n introduced in his Rex, 8MD, VIP, and KTC HUDS and their variants. It was popularized in yAhud, created by whayay, and it is a free font so I feel no qualms about using it in these diagrams.

The HUD I was using to create the explanation images is the default HUD, so if things look different and you’re confused by some aspect of your custom HUD or its code, that could be the cause.

## Credits

This guide was written by [Komorebi](https://steamcommunity.com/profiles/76561198048238506). He also gives thanks to CollyCat, Magma, Pwny_, omnibombulator, Lange, Mana and Doodle for various help with the guide.

As far as usage of this guide goes: use it however/whenever you wish!
