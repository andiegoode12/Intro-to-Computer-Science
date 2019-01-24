public class Hero extends Sprite
{
  //constructor
  public Hero()
  {
   super();
   
   xpos = random(width);
   ypos = random(height);
   
   spriteSheet = loadImage("SMBSpriteSheet.png");
   myImage = spriteSheet.get(190 + (animationNum * 30), 0, 20, 20);
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
      myImage = spriteSheet.get(220 + (animationNum * 30), 0, 20, 20);
      animationNum += 1;
      xpos += 6;
    } 
  }
  else
  {
    myImage = spriteSheet.get(190,0, 20,20);
  }
  if (animationNum > 2)
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