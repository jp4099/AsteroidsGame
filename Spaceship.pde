class Spaceship extends Floater
{   
    private int r,g,b;
    public Spaceship()
    {
      corners = 4;
      int[] xS = {-8, 16, -8, -2};
      int[] yS = {-8, 0, 8, 0};
      xCorners = xS;
      yCorners = yS;
      myCenterX = 250;
      myCenterY = 250;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;
      strokeColor = color(255,255,255);
    }
    
    public void show()
    {
     super.show();  
     r = (int)(Math.random()*255+100);
     g = (int)(Math.random()*255+100);
     b = (int)(Math.random()*255+100);
     myColor = color(r, g, b);
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
