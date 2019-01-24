
PImage myImage = new PImage();



void setup()
{
  size(1280,720);
  background(255);
  
  myImage = loadImage("link.jpeg");
  imageMode(CENTER);
}

void draw()
{
  background(255);
  
  pushMatrix(); //give us a new coordinate grid
  translate(100,100);
  rotate(radians(90)); //in radians, always about the origin
  
  image(myImage,0,0); //stamp image at origin
  //image(myImage,  mouseX, mouseY);
  scale(0.5);
  rotate(PI/2);
  ra
  //image(myImage, 0,0);
  
  for(int i=0; i<12; i++)
  {
    rotate(i*radians((360/12)));
    image(myImage, 0, 0);
  }
  popMatrix(); 
  
  
 pushMatrix();
 translate(mouseX, mouseY);
 scale((float)Math.sin(radians(frameCount)));
 rotate(radians(frameCount));
 image(myImage, 0,0);
 
}