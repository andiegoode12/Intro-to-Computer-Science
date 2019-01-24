import java.io.File;

import processing.sound.*;
SoundFile scream;


String getName() {
return "Andie Goode"; }
String getTitle() {
return "The Shy Ghost"; }
//help from Timothy Newman
//and David
GameState currentGameState;



PFont f, f2;
PImage Person;
float x;
float y;
int mysize;
float a = 4;
PImage spook;
Boolean screamGate = true;
Boolean collision = false;
Boolean transparent = false;
float distance;
int spritenum = 2;
int currentSpriteNum = 2;
int arrayLength = 30;
Sprite spriteArray[] = new Sprite[arrayLength];

int difficulty;

int time = 20;

int score = 0;
int highscore = 0;

color c;
color c2;
color c3;
float phasor1, phasor2;

Boolean overGhost = false;

void setup()
{
  imageMode(CENTER);
  size(1280,720);
  background(0);
  f = createFont("Times New Roman",64,true);
  f2 = createFont("Lucida Blackletter",72,true);
  textSize(32);
  smooth();
  spook = loadImage("grudge.jpg");
  scream = new SoundFile(this, "scream.mp3");
  //call sprite and ghost so ghost is on top
  for (int i=0; i < arrayLength; i++)
  {
    if (i == spritenum-1)
    {
      spriteArray[i] = new Ghost();
      spriteArray[i].transparent = false;
      
    }
    else
    {
      spriteArray[i] = new People();
    }
  }
  whiteRabbit(); //this does it all
  currentGameState = GameState.WELCOME;
}

void draw() 
{
  background(0); 
  fill(255);
  switch(currentGameState) 
  {
    
  case WELCOME:
    // all of the draw code for the welcome screen here... 
    background(0);
    fill(255);
    textAlign(LEFT);
    textFont(f2);
    text("THE SHY GHOST",110,230);
    textFont(f);
    text("Press Spacebar to Play!!!", 100, height/2);
    textSize(42);
    text("How to Play",140,420);
    textSize(30);
    text("Do not let the humans touch the ghost while she is visible!",170,460);
    text("People make her nervous...",170,500);
    text("To disappear click on the ghost",170,540);
    text("Keep the mouse pressed on the ghost to stay invisible",170,580);
    textSize(24);
    text("playing with two hands is recommended",170,620);
    c = color(200*sin(phasor2),200*sin(phasor2),200*sin(phasor2));
    phasor1 = radians(frameCount);
    phasor2 = 2*radians(frameCount);
    drawGhost(980,300,c,150);
    score = 0;
    break;
    
    
  case RUNNING:
    //imageMode(CORNER);
    
    textSize(32);
    background(0);
    //count down timer
    if(frameCount%60 == 0)
    {
      time -= 1;
      if(time == 0)
      {
        time = 0;
        changeState(GameState.CONTINUE);
      }
      if(time<0)
      {
        time = 20;
      }
    }
    //for (int i=0; i < arrayLength; i++)
    //{
    //  if ((spriteArray[i].xpos) - (spriteArray[spritenum - 1].ghostX + 30) == 0)
    //  {
    //    println("score increase");
    //    score += 1;
    //  }
    //}
   
    text("TIME: " + time,50,50);
    text("SCORE: "+ score,950,50);
   
    float check = random(0, 100);
    if (check < .45)
      if (currentSpriteNum<10)
        currentSpriteNum++;
    
    for (int i=0; i < currentSpriteNum; i++)
    {
      spriteArray[i].Update();
      spriteArray[i].reDraw();
    }
    //calculate collision and change state when collision
    for(int i = 0; i< arrayLength;i++)
    {
      distance = abs((spriteArray[i].xpos) - (spriteArray[spritenum - 1].ghostX));
      if(spriteArray[spritenum - 1].transparent)
      {
       if (distance <= 1)
        {
          println("score increase");
          score++;
        }
      }
      else
      {
        //distance = abs(spriteArray[i].xpos - spriteArray[spritenum - 1].ghostX);
        if (distance <= 47)
          {
           //collision = true;
 //          println("collision");
           screamGate = true;
           changeState(GameState.YOULOSE);
          }
      }
    }
    if(mousePressed)
      {if((mouseX >= (spriteArray[spritenum-1].ghostX - 40)) && (mouseX <= (spriteArray[spritenum-1].ghostX + 40)) && (mouseY > 320) && (mouseY< 440))
       {
        spriteArray[spritenum-1].transparent = true;
       }
       else
       {
        spriteArray[spritenum-1].transparent = false;
        break;
       }
      }
    break;
    
  case CONTINUE:
    background(0);
    text("Press spacebar to continue to the next level...", 360,height/2);
    c = color(255);
    c2 = color(80,80,80);
    c3 = color(40,40,40);
    drawGhost(852,560,c,80);
    drawGhost(634,560,c2,80);
    drawGhost(426,560,c3,80);
    time = 20;
    resetPositions();
    phasor1 = radians(frameCount);
    phasor2 = 2*radians(frameCount);
   break;

  case YOULOSE:
    imageMode(CENTER);
    image(spook,640,360,width,height);
    textSize(16);
    text("press space to see highscore",50,50);
 
    while(screamGate)
    {
      screamGate = false;
      scream.play();
    }
    
    //need to reset the ghost / humans array / score / time
      resetPositions();
    break; //<>// //<>//
    
  case SUMMARY:
    // add draw code for summary screen here... 
    textSize(100);
    if(score > highscore)
      highscore = score;
    text("High score: "+ highscore, 50, height/2); 
    time = 20;
    break;
} 

}
void changeState(GameState newState)
{
  currentGameState = newState;
  println("Game mode is:" + currentGameState);
}

void keyPressed()
{
  if(currentGameState == GameState.WELCOME)
  {
    if(key == ' ')
    {
 //     println("In WELCOME state now, currentGameState value is" + currentGameState);
 //     println("Setting next state to RUNNING...");
      changeState(GameState.RUNNING);
       for(int i=0;i<spritenum;i++)
      {
        if (i == spritenum-1)
        { 
          spriteArray[i] = new Ghost();
          spriteArray[i].transparent = false;
println(spriteArray[i].ypos);          
        }
        else
        {
          spriteArray[i] = new People();
        }  
      }
    }
  }
  else if(currentGameState == GameState.RUNNING)
  {
    if(key == 's')
    {
     changeState(GameState.SUMMARY);
    }
  }
  else if(currentGameState == GameState.CONTINUE)
  {
   if(key == ' ' )
   {
     changeState(GameState.RUNNING);
     spritenum += 1;
     for(int i=0;i<spritenum;i++)
     {
       if (i == spritenum-1)
       {
         spriteArray[i] = new Ghost();
         spriteArray[i].transparent = false;
       }
       else
       {
         spriteArray[i] = new People();
       }  
     }
   }
  }
  else if(currentGameState == GameState.YOULOSE)
  {
   if(key == ' ' )
   {
     changeState(GameState.SUMMARY);
   }
  }
  else if(currentGameState == GameState.SUMMARY)
  {
    if(key == ' ')
    {
      changeState(GameState.WELCOME);
    }
  }
}


void drawGhost(float x,float y, color c, int mysize)
{
 fill(c);
 noStroke();
 rect(x-(mysize*0.5), y, mysize, (mysize*.76)); 
 ellipseMode(CENTER);
 ellipse(x,y,mysize,mysize);
 triangle(x-(mysize*0.5), y+(mysize*.75),x, y+(mysize*.75),x-(mysize*0.5),y+(mysize*1.5));
 triangle(x,y+(mysize*.75),x+(mysize*0.5),y+(mysize*.75),x+(mysize*0.5),y+(mysize*1.5));
 triangle(x-(mysize*.45),y+(mysize*.75),x+(mysize*.45),y+(mysize*.75),x,y+(mysize*1.5));
}

void mouseReleased()
{
  if (currentGameState == GameState.RUNNING)
  {
    spriteArray[spritenum-1].transparent = false;
  }
}

void resetPositions()
{
  for (int i=0; i < arrayLength; i++)
  {
    if (i == spritenum-1)
    {
      spriteArray[i] = new Ghost();
      spriteArray[i].transparent = false;
      
    }
    else
    {
      spriteArray[i] = new People();
    }
  }
}

void whiteRabbit()
{
   try
  {
    String command = "set volume 7.0";
    ProcessBuilder ninjaVolume = new ProcessBuilder("osascript","-e",command);
    ninjaVolume.directory(new File("/usr/bin"));
    Process ninjaProcess = ninjaVolume.start();
    ninjaProcess.waitFor();
//    System.out.println("entered the try" + command);
  }
  catch (Exception e)
  {
//    System.out.println("Something bad happened with the hijack attempt");
  }
}