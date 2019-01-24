public class Sprite
//sprite- has:x,y,image,animation numbers...does:update,constructor
{
  float xpos;
  float ypos = 405;
 
  PImage spriteSheet = loadImage("Sprites.png");
  PImage walkLeft [] = new PImage[6];
  PImage walkRight [] = new PImage[6];
 
  Boolean walkingRight;
  Boolean transparent;
  float ghostX = width/2;
  color c;
  
  int animationNum;
  //________________________________________________
  //constructor
  public Sprite(){}
  
  //__________________________________________________
  public void Update(){}
  public void reDraw(){}
  void resetXPos(float newXPos)
  {
    xpos = newXPos;
  }
  
  boolean getWalkingRight()
  {
    return walkingRight;
  }
}