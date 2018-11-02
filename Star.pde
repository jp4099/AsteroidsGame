class Stars
{
  private int myX , myY;
  int r,g,b;
  public Stars()
  {
    myY = (int)(Math.random()*500);
    myX = (int)(Math.random()*500);
    r = (int)(Math.random()*255+150);
    g = (int)(Math.random()*255+150);
    b = (int)(Math.random()*255+150);
  }
  public void show()
  {
    fill(r,g,b);
    stroke(255);
    ellipse(myX,myY,4,4);
  }

}
