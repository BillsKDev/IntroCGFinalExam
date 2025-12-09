# INTRO CG FINAL EXAM BILAL KHAN EXPLANATIONS


<h3>BASE SCENE:</h3>
A quick note that I spoke with the professor on how to approach a fourth shader. Since Scerolling and holograms are required for pacman, and they were both second half shaders, i had a hard time figuring out what shaders to use from the second half with so little to choose from. Glass, Water, PBR, Shadows do not really make sense for a pacman game especially on a 2D surface so I chose to do rim lighting as my fourth shader to improve the poewr up look.

My base scene has pacman, an enemy, and a powerup with the actual background from pacman that is color graded to look different, as well as a completely different background underneath with a scrolling background of a Pacman menu screen. The player is able to move with WASD and an enemy moves back and forth. I chose to have this as my base scene because these 3 are the most important parts of pacman given the time consstraint, and being able to have a proper background and map suits the scene very well. I used a lot of images from a quick google search for the background scrolling image, aswell as a pacman texture on the player. For the map I also just used a empty map image that i overlayed a color grading effect.
<img width="1584" height="887" alt="image" src="https://github.com/user-attachments/assets/6d5a38f9-6cf0-40c4-8c75-024aba66fc80" />

<h3>FIRST SHADER: SCROLLING TEXTURE</h3>
**VIDEO: https://youtu.be/vAWV-gOn31Q**

A scrolling texture was made as the background to show a menu like screen for Pac-man. I decided to have this because I didn't really see any other use of a scrolling texture in a Pacman game and i didn't want the background to be  purely just a skybox since it is a 3D scene instead of 2d. Thus, I decided a scrolling texture for the background would make the scene feel a lot more arcadey since Pac-Man is an arcade game.

This shader was done by using a texture and a scroll speed for only the X value. In class we were shown how to do a scrolling texture with X and Y, but I did not feel the need for the Y scrolling so I decided to only implement X scrolling. This was done by taking  the texture and transforming to clip space, then changing the UV's X value for the texture by multiplying it by Unitys built in Time value for shaders, so you take the time Y and since we are only implementing X scrolling in this shader different from class, we only have to make the UV x value equal to the multiplied value of a custom scroll speed and time value

<h3>SECOND SHADER: HOLOGRAMS</h3>

<h3>THIRD SHADER: COLOR GRADING</h3>

<h3>FOURTH SHADER: RIM LIGHTING</h3>


