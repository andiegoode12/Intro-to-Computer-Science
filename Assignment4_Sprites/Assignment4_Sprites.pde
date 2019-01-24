String getName() {
return "Andie Goode"; }
String getTitle() {
return "Assignment 4 - Sprites"; }
void setup()
{
  size(1280,720); 
}  

void draw()
{
background(0);
int shapes;
shapes = 400;
  for (int i=0; i<shapes; i = i+1)  
  {
   float xpos;
   float ypos;
   float size;
   color c;
   float rotation;
  
   xpos = random(0,width);
   ypos = random(0, height);
   size = random(10,80);
   c = color(random(255), random(255), random(255));
   rotation = random(0,360);
   
   pushMatrix();
   translate(xpos,ypos);
   scale(radians(size));
   rotate(radians(rotation));
   drawShape(xpos, ypos, size, c); 
   popMatrix();
  }
 
}

void drawShape(float x, float y, float size, color c)
{
 fill(c);
 stroke(c);
 rect(x-(size*0.5), y, size, (size*1.25)); 
 ellipseMode(CENTER);
 ellipse(x,y,size,size);
 triangle(x-(size*0.5), y+(size),x, y+(size),x-(size*0.5),y+(size*1.5));
 triangle(x,y+(size),x+(size*0.5),y+(size),x+(size*0.5),y+(size*1.5));
 triangle(x-(size*.45),y+(size),x+(size*.45),y+(size),x,y+(size*1.5));

}