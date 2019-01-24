public class People extends Sprite
{
  
  public People()
  {
    //fill array with PImage for each of 6 slots
    walkRight[0] = spriteSheet.get(0  , 0, 110, 150);
    walkRight[1] = spriteSheet.get(110, 0, 100, 150);
    walkRight[2] = spriteSheet.get(210, 0, 105, 150);
    walkRight[3] = spriteSheet.get(315, 0, 100, 150);
    walkRight[4] = spriteSheet.get(420, 0, 90 , 150);
    walkRight[5] = spriteSheet.get(510, 0, 113, 150);
    
    walkLeft[0] = spriteSheet.get(0  , 150, 110, 150);
    walkLeft[1] = spriteSheet.get(110, 150, 90 , 150);
    walkLeft[2] = spriteSheet.get(200, 150, 120, 150);
    walkLeft[3] = spriteSheet.get(320, 150, 100, 150);
    walkLeft[4] = spriteSheet.get(420, 150, 90 , 150);
    walkLeft[5] = spriteSheet.get(510, 150, 113, 150);
    
    //constructor decide if walk left or right
    int temp = (int)(100.0 * random(0,1));
    if(temp < 50)
    {
      walkingRight = true;
      xpos = -110;
    }
    else
    {
      walkingRight = false;
      xpos = width+110;
    }
    
    animationNum = 0;
  }
  
  public void Update()
  {
    animationNum = frameCount/12;     //controls how fast the frames update - change the number to modify
    animationNum = animationNum%6;    //forces the aniNum to cycle
  }
  
  public void reDraw()
  {
    if(walkingRight)
    {
      image(walkRight[animationNum], xpos, ypos);
      
      xpos += 1;
    }
    else
    {
      image(walkLeft[animationNum], xpos, ypos);
      xpos -= 1;
    }
  }
  
}