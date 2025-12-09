# INTRO CG FINAL EXAM BILAL KHAN EXPLANATIONS


<h3>BASE SCENE:</h3>
A quick note that I spoke with the professor on how to approach a fourth shader. Since Scerolling and holograms are required for pacman, and they were both second half shaders, i had a hard time figuring out what shaders to use from the second half with so little to choose from. Glass, Water, PBR, Shadows do not really make sense for a pacman game especially on a 2D surface so I chose to do rim lighting as my fourth shader to improve the poewr up look.

My base scene has pacman, an enemy, and a powerup with the actual background from pacman that is color graded to look different, as well as a completely different background underneath with a scrolling background of a Pacman menu screen. The player is able to move with WASD and an enemy moves back and forth. I chose to have this as my base scene because these 3 are the most important parts of pacman given the time consstraint, and being able to have a proper background and map suits the scene very well. I used a lot of images from a quick google search for the background scrolling image, aswell as a pacman texture on the player. For the map I also just used a empty map image that i overlayed a color grading effect.
<img width="1584" height="887" alt="image" src="https://github.com/user-attachments/assets/6d5a38f9-6cf0-40c4-8c75-024aba66fc80" />

<h3>FIRST SHADER: SCROLLING TEXTURE</h3>
**VIDEO: https://youtu.be/vAWV-gOn31Q**

A scrolling texture was made as the background to show a menu like screen for Pac-man. I decided to have this because I didn't really see any other use of a scrolling texture in a Pacman game and i didn't want the background to be  purely just a skybox since it is a 3D scene instead of 2d. Thus, I decided a scrolling texture for the background would make the scene feel a lot more arcadey since Pac-Man is an arcade game.

This shader was done by using a texture and a scroll speed for only the X value. In class we were shown how to do a scrolling texture with X and Y, but I did not feel the need for the Y scrolling so I decided to only implement X scrolling. This was done by taking  the texture and transforming to clip space, then changing the UV's X value for the texture by multiplying it by Unitys built in Time value for shaders, so you take the time Y and since we are only implementing X scrolling in this shader different from class, we only have to make the UV x value equal to the multiplied value of a custom scroll speed and time value

**DIAGRAM:*
<img width="829" height="727" alt="image" src="https://github.com/user-attachments/assets/cfad7588-8af5-44c8-832e-79e032e0ea61" />

<h3>SECOND SHADER: HOLOGRAMS</h3>
A hologram shader was used for the player Pacman (See video: https://www.youtube.com/watch?v=vAWV-gOn31Q the yellow circle is the pacman object) It has asmall hologram circling around the object really fast. I chose to use the hologram for this object because with the color grading that was done some of the obejcts was hard to be noticeable in the scene, so with this effect you can clearly see the player and give him a more sci fi look to differentiate itself and fit the color grading since the hologram effect is really fast.

In class, we did a hologram with rim lighting, I decided to not use it at all so i removed all rim lighting behaviors from the shader and jsust focused on the hologram effect with the main texture. This shader takes position, normal, and view direction, and calculates a line value through a sine wave with a frequency, the x uv, and time. The color then is calculated with a step function multiplying the line color and a float value i specify for the color on the hologram. In class, we made a hologram effect with the line coming down and it was really slow. I felt like this didnt really make sense for my player so I wanted the hologram line to continously wrap around the plaeyr so I made the line move along the X axis instead, while using the Time Z value which was different from class so that it can have a snmall unique always visible hologram that is wrapping around the player.

<h3>THIRD SHADER: COLOR GRADING</h3>
<img width="1584" height="887" alt="image" src="https://github.com/user-attachments/assets/6d5a38f9-6cf0-40c4-8c75-024aba66fc80" />

My third shader done was color grading, and this was done to make the map of the game look a lot more unique to what was used in the original pac man game. I used a cool LUT and a blank pac man background image i found from a google search and put them together to create the color grading effect on the map so it gives off a more cooler vibe. This shader was done by using the LUT that I changed through photoshop with the hue satuuation and other values and determining a contribution. It maps all the input values from the LUT and changes it to the output value via the LUT with a lerp effect. This was done in Unity through using a render texture and applying it on an object with the LUT material and  a custom texture, which was the PAC man background I sued from online. Personally I think this was the best effect that fits the look of the game.

<h3>FOURTH SHADER: RIM LIGHTING</h3>
<img width="666" height="353" alt="image" src="https://github.com/user-attachments/assets/eab75692-11fc-4fce-bf8f-55843908de46" />

The final shader done was rim lighting. This was used on the enemy and powerup to give them a more enhanced look in the scene and make them more noticeable. This is different from the one done in class because I wanted the rim lighting to cover the entire object so
<img width="725" height="512" alt="image" src="https://github.com/user-attachments/assets/6846ea31-ba6b-4bc4-ae01-cb97cd210fe4" />



