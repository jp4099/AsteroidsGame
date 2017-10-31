class Spaceship extends Floater  
{   
    public Spaceship() {
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 15;
    yCorners[0] = 0;
    xCorners[1] = -10;
    yCorners[1] = -10;
    xCorners[2] = -10;
    yCorners[2] =10;
    myColor = 250;
    myCenterX= 250;
    myCenterY= 250;
    myDirectionX= 0;
    myDirectionY= 0;
    myPointDirection = 0;
    
    
    
    }
  //your code here
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
    myDirectionY = y ;
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