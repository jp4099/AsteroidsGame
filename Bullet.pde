class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = ufo.getX();
    myCenterY = ufo.getY();
    myPointDirection = ufo.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + ufo.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + ufo.getDirectionY();
  }
  public void show() {
    fill(0);
    stroke(250, 255, 8);
    ellipse((float)myCenterX, (float)myCenterY, 12, 12);
  }

  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
 
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
    return myDirectionX;
  }
  public void setDirectionY(double y)
  {
    myDirectionY = y;
  }
  public double getDirectionY()
  {
    return myDirectionY;
  }
  public void setPointDirection(int degrees)
  { 
    myPointDirection = degrees;
  }
  public double getPointDirection()
  { 
    return myPointDirection;
  }
}
