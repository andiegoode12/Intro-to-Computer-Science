public class Ghost extends Sprite
{
  public Ghost()
  {

  }
  
  public void Update()
  {
    ghostX += a;
    if(ghostX <= 100 || ghostX >= 1180)
    {
      //changes direction of ghost
      a *= -1;
    }
    if (transparent)
    {
      c = color(40,40,40);
      //println('transparent');
    }
    else
    {
      c = color(255);
      //c = color(0);
    }
  }
  
  public void reDraw()
  {
    drawGhost(ghostX,380,c,60);
  }
}