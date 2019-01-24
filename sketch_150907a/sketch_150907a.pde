String getName() {
return "Andie Goode"; }
String getTitle() {
return "Ghost"; }

void setup()
{
size (640,360);
background (0);
}
void draw()
{
float x = 80;
float y = 50;
int mysize = 5;
color c = color(255,0,0);
drawGhost(x,y,c,mysize);
}

void drawGhost(float x,float y, color c, int mysize)
{
fill(255,0,0);
stroke(255,0,0);
//left side
rect(x,y,x-(mysize*10), y+(mysize*12.5));
rect(x-(mysize*2.6),y+(mysize*2),x-(mysize*13), y+(mysize*12));
rect(x-mysize,y+(mysize*2),x-(mysize*13), y+(mysize*14));
rect(x-(mysize*4.8),y+(mysize*4),x-(mysize*13), y+(mysize*8));
rect(x-(mysize*6.8),y+(mysize*6),x-(mysize*13.5), y+(mysize*8));
rect(x-(mysize*8.8),y+(mysize*11),x-(mysize*13), y+(mysize*5.5));

//right side
rect(x+(mysize*5.8),y+(mysize*2),x-(mysize*13), y+(mysize*12));
rect(x+(mysize*4.2),y+(mysize*2),x-(mysize*13), y+(mysize*14));
rect(x+(mysize*8),y+(mysize*4),x-(mysize*13), y+(mysize*8));
rect(x+(mysize*10.6),y+(mysize*6),x-(mysize*13.5), y+(mysize*8));
rect(x+(mysize*12),y+(mysize*11),x-(mysize*13), y+(mysize*5.5));

//left eye
fill(255);
stroke(255);
rect(x-(mysize*1.3),y+(mysize*6),x-(mysize*13), y-(mysize));
rect(x-(mysize*3.3),y+(mysize*8),x-(mysize*9), y-(mysize*5));
fill(65,92,170);
stroke(65,92,170);
rect(x+(mysize*0.6),y+(mysize*10),x-(mysize*13),y-(mysize*7));

//right eye
fill(255);
stroke(255);
rect(x+(mysize*8),y+(mysize*6),x-(mysize*13), y-(mysize));
rect(x+(mysize*6),y+(mysize*8),x-(mysize*9), y-(mysize*5));
fill(65,92,170);
stroke(65,92,170);
rect(x+(mysize*10),y+(mysize*10),x-(mysize*13),y-(mysize*7));
}