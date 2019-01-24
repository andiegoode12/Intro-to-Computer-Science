
float sunX, sunY;

float earthDist = 140;
float earthX, earthY;

float moonDist = 25;
float moonX, moonY;

float phasor1, phasor2;
void setup()
{
  size(640,360);
  background(0);
  
  sunX = width/2;
  sunY = height/2;
  noStroke();
}

void draw()
{
  background(0);
  
  //draw the sun
  fill(255,255,0);
  ellipse(sunX, sunY, 50,50);
  
  //draw the earth
  earthX = sunX + earthDist * cos(phasor1);
  earthY = sunY +earthDist * sin(phasor1);
  fill(0,0,255);
  ellipse(earthX,earthY,20,20);
  
  //draw the moon
  moonX = earthX + moonDist * cos(phasor2);
  moonY = earthY + moonDist * sin(phasor2);
  fill(128);
  ellipse(moonX, moonY, 10, 10);
  
  //update phasors
  phasor1 = radians(frameCount);
  phasor2 = 10 * radians(frameCount);
}