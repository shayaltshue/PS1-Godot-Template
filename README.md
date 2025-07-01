# PS1-Godot-Template

## Description
Want to make a PS1-style game in Godot? Don't want to go through the hassle of making the engine play by the graphics the PS1 had to abide by? This template is a fast way to get what you need to get those beautiful low-poly games out fast. 
I followed a tutorial by Fredyy on youtube (this one: https://www.youtube.com/watch?v=VkmTr5WBjF8) and highly recommend watching it if you want a better understanding of what's going on behind the scenes (pun not intended). 

## How to Use
1. Download the project either by cloning it via git, or downloading the zip (and unzipping it). 
2. Import the project as a new Godot project in the initial Godot window. 
3. In a scene, create a CavnasLayer node, then add a ColorRect node as a child to the CanvasLayer. 
4. Select the ColorRect, then in the Inspector window expand "Material". Select "Quick Load" and select the "ps1_postprocess_colorrect_mat.tres" material. 
5. With ColorRect still selected (and in the 2D option at the top), select the anchor icon and use the bottom right option to ensure the ColorRect fills the full screen (it renders everything behind it, if this step isn't done it'll be just a small square in the top left corner that's rendering like a PS1).

## Credits
Freddy on youtube for the tutorial to make the shaders (https://www.youtube.com/watch?v=VkmTr5WBjF8)
Can't find the low-poly character model again on itch.io (though it was CC0). Likely going to replace it with this one soon because it's rigged: https://rascarcapack.itch.io/lowpoly-male-base-mesh-blend
