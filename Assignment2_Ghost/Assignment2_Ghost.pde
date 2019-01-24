String getName() {
return "Andie Goode"; }
String getTitle() {
return "Ghost Composite Shape"; }

float a = 100;
int direction = 1;
void setup()
{
size (640,360);
background (0);
}
void draw()
{
float x = 100;
float y = 100;
int mysize = 30;
color c = color(255);
drawGhost(a,y,c,mysize);
a = a + 1*direction;
 if ((a > (width - 25)) || (a < 25))
  {
    direction = direction * -1;
  }
}
void drawGhost(float x,float y, color c, int mysize)
{
  background(0);
 fill(255);
 stroke(255);
 rect(x-(mysize*0.5), y, mysize, (mysize*1.25)); 
 ellipseMode(CENTER);
 ellipse(x,y,mysize,mysize);
 triangle(x-(mysize*0.5), y+(mysize),x, y+(mysize),x-(mysize*0.5),y+(mysize*1.5));
 triangle(x,y+(mysize),x+(mysize*0.5),y+(mysize),x+(mysize*0.5),y+(mysize*1.5));
 triangle(x-(mysize*.45),y+(mysize),x+(mysize*.45),y+(mysize),x,y+(mysize*1.5));
  
}