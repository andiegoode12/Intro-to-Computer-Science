public class Villian extends Sprite
{
  
  public Villian()
  {
   super();
   
   xpos = random(width);
   ypos = random(height);
   
   spriteSheet = loadImage("SMBSpriteSheet.png");
   myImage = spriteSheet.get(185 - (animationNum * 30), 250, 30, 30);
   animationNum = 0;
  }
  
  public void Update()
  {
    //scale the matrix (for visual clarity...)
  pushMatrix();
  // update mario's animation
  if (mousePressed)
  {
    if ((frameCount % 3) == 0)
    {
      myImage = spriteSheet.get(185 - (animationNum * 30), 250, 30, 30);
      animationNum += 1;
      xpos -= 3;
    } 
  }
  else
  {
    myImage = spriteSheet.get(185, 250, 30, 30);
  }
  if (animationNum > 1)
  {
    animationNum = 0;
  }
  // draw the sprite at the correct animation position
  translate(xpos, ypos);
  image(myImage, 0, 0);
  // remove the matrix we scaled
  popMatrix();
  }
}