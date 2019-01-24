String getName() {
return "Andie Goode"; }
String getTitle() {
return "Ghost Animation"; }

float ghostX, ghostY;
float ghostDist = 100;
float phasor1, phasor2;
void setup()
{
  size (640,360);
  background (0);
}

void draw()
{
  background(0);
  //change size
  float mysize = 30*sin(phasor2);
  //change color from white to grey to black
  color c = color(201*sin(phasor2),224*sin(phasor2),227*sin(phasor2));
  ghostX = 320 + ghostDist * cos(phasor1);
  ghostY = 180 + ghostDist * sin(phasor1);
  
  drawGhost(ghostX,ghostY,c,mysize);
  
  //update phasors
  phasor1 = radians(frameCount);
  phasor2 = 2*radians(frameCount);

  
}

void drawGhost(float x,float y, color c, float mysize)
{
  background(0);
  fill(c);
  stroke(c);
 rect(x-(mysize*0.5), y, mysize, (mysize*1.25)); 
 ellipseMode(CENTER);
 ellipse(x,y,mysize,mysize);
 triangle(x-(mysize*0.5), y+(mysize),x, y+(mysize),x-(mysize*0.5),y+(mysize*1.5));
 triangle(x,y+(mysize),x+(mysize*0.5),y+(mysize),x+(mysize*0.5),y+(mysize*1.5));
 triangle(x-(mysize*.45),y+(mysize),x+(mysize*.45),y+(mysize),x,y+(mysize*1.5));
 fill(255);
 stroke(255);  
}