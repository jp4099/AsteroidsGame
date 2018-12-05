class Asteroid extends Floater
{
  private int rotSpeed;
  public Asteroid() {
    rotSpeed = (int)(Math.random());
    myDirectionX = (int)(Math.random()*4+1);
    myDirectionY = (int)(Math.random()*4+1);
    
    corners = 15;
    int[] xS = {0, 6, 12, 16, 16, 12, 6, 0, -6, -12, -16, -14, -16, -14, -8};
    int[] yS = {12, 14, 10, 6, -4, -10, -12, -12, -10, -12, -6, -2, 2, 8, 14};
    xCorners = xS; 
    yCorners = yS;
    myColor = 200;
    myCenterX = (int)(Math.random()*250);
    myCenterY = (int)(Math.random()*250);
  }

  public void move() {
    turn(rotSpeed);
    super.move();
  }

  public void setX(int x)
  { 
    myCenterX = x;
  }
  public int getX()
  {
    return (int)myCenterX;
  }
  public void setY(int y)
  { 
    myCenterY = y;
  }
  public int getY()
  { 
    return (int)myCenterY;
  }
  public void setDirectionX(double x)
  { 
    myDirectionX = x;
  }
  public double getDirectionX()
  { 
    return (int)myDirectionX;
  }
  public void setDirectionY(double y)
  { 
    myDirectionY = y;
  }
  public double getDirectionY()
  { 
    return (int)myDirectionY;
  }
  public void setPointDirection(int degrees)
  {
    myPointDirection = degrees;
  }
  public double getPointDirection()
  { 
    return (int)myPointDirection;
  }
}


/*
    xCorners = new int[corners];
    yCorners= new int[corners];
    xCorners[0] = 0;
    yCorners[0] = 12;
    xCorners[1] = 6;
    yCorners[1] = 14;
    xCorners[2] = 12;
    yCorners[2] = 10;
    xCorners[3] = 16;
    yCorners[3] = 6;
    xCorners[4] = 16;
    yCorners[4] = -4;
    xCorners[5] = 12;
    yCorners[5] = -10;
    xCorners[6] = 6;
    yCorners[6] = -12;
    xCorners[7] = 0;
    yCorners[7] = -12;
    xCorners[8] = -6;
    yCorners[8] = -10;
    xCorners[9] = -12;
    yCorners[9] = -12;
    xCorners[10] = -16;
    yCorners[10] = -6;
    xCorners[11] = -14;
    yCorners[11] = -2;
    xCorners[12] = -16;
    yCorners[12] = 2;
    xCorners[13] = -14;
    yCorners[13] = 8;
    xCorners[14] = -8;
    yCorners[14] = 14;
*/
