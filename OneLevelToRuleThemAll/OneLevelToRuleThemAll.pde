//enumerating
//Modes: welcome,L1,L2,L3...Summary

color bgc = color(0);

GameMode mode;

void setup()
{
  size(640,360);
  background(bgc);
  //mode = GameMode.WELCOME;
  changeMode(GameMode.WELCOME);
}

void draw()
{
if (mode == GameMode.WELCOME)
{
  drawWelcome();
}

else if (mode == GameMode.LEVEL1)
{
  drawLevel1();
}

else if (mode == GameMode.SUMMARY)
{
  drawSummary();
}

else if(mode == GameMode.BSOD)
{
  drawBSOD();
}
}

void drawWelcome()
{
  
}

void drawLevel1()
{
  
}

void drawSummary()
{
  
}

void drawBSOD()
{
  
}

void keyPressed()
{
  if (mode == GameMode.WELCOME)
  {
    if(key == ' ')
    {
      changeMode(GameMode.LEVEL1);
    }
  }

  else if (mode == GameMode.LEVEL1)
  {

  }

  else if (mode == GameMode.SUMMARY)
  {

  }

  else if(mode == GameMode.BSOD)
  {

  }
}

void changeMode(GameMode newMode)
{
  mode = newMode;
  println("Game mode is: " + mode);
}