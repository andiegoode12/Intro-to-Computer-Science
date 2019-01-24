String getName() {
return "Andie Goode"; }
String getTitle() {
return "Iteration randomized target"; }
void setup()
{
  size(1280,720); 
}  

void drawShape(float x, float y, float size, color c)
{
  fill(c);
  ellipseMode(CENTER);
  ellipse(x,y, size, size);
  fill(random(255),random(255),random(255));
  ellipse(x,y,size*.75,size*.75);
  fill(c);
  ellipse(x,y,size*.5,size*.5);
  fill(random(255),random(255),random(255));
  ellipse(x,y,size*.25,size*.25);
  fill(c);
  ellipse(x,y,size*.125,size*.125);
  fill(random(255),random(255),random(255));
  ellipse(x,y,size*.0625,size*.0625);
}

void draw()
{
  background(0);


  for (int i=0; i<500; i = i+1)  
{
  float xpos;
   float ypos;
   float size;
   color c;
  
   xpos = (width/400) * i;
   //xpos = random(0, width);
   ypos = random(0, height);
   size = random(20,90);
   c = color(i/2, random(255), random(255));
   drawShape(xpos, ypos, size, c); 
  }
}