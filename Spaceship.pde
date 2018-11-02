class Spaceship extends Floater
{   
    public Spaceship()
    {
      corners = 4;
      int[] xS = {-8, 16, -8, -2};
      int[] yS = {-8, 0, 8, 0};
      xCorners = xS;
      yCorners = yS;
      myColor = color((int)(Math.random()*255+100),(int)(Math.random()*255+100),(int)(Math.random()*255+100));
      myCenterX= 250;
      myCenterY= 250;
      myDirectionX= 0;
      myDirectionY= 0;
      myPointDirection = 0;
    }
   public void show ()  //Draws the floater at the current position  
  {             
    fill((int)(Math.random()*255+100),(int)(Math.random()*255+100),(int)(Math.random()*255+100));   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
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
