
// Super Mario Bros. Sprite Sheet Demo
//    by Dr. Steve Nordstrom

//Outside the functions makes it accessible everywhere

//PImage marioSprite;
PImage bg;

int arrayLength = 15;
Sprite spriteArray[] = new Sprite[arrayLength];

//Sprite mario;

//int marioAnimationNum = 0;
//int marioX = 40;
//int marioY = 189; // try 189

void setup()
{
  //size(256, 240);
  size(640, 360);
  background(128); 
  
  for(int i=0;i<arrayLength;i++)
  {
   if (i % 2 == 0) //if (even)
   {
     spriteArray[i] = new Hero(); 
   }
   else// else (odd)
   {
     spriteArray[i] = new Villian(); 
   }
  }
  //bg = loadImage("SMB1-1BG.png");
  //spriteSheet = loadImage("SMBSpriteSheet.png");
  //marioSprite = spriteSheet.get(190 + (marioAnimationNum * 30), 0, 20, 20);
  //mario = new Sprite();
}


void draw()
{
  // wipe the backbround
  background(128);
  //mario.Update();
  //image(bg, 0,0);
  //update sprite array at location i and redraw
  for(int i=0;i<arrayLength;i++)
  {
   spriteArray[i].Update(); 
  }
 
}