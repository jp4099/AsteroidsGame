class Bullet extends Floater
{
  public Bullet(Spaceship ufo)
  {
  class Bullet extends Floater
{
  public Bullet(Spaceship ufo){
    myCenterX = ufo.getX();
    myCenterY = ufo.getY();
    myPointDirection = ufo.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + ufo.myDirectionX;
    myDirectionY = 5 * Math.sin(dRadians) + ufo.myDirectionY;
  }
   public void setX(int x){myCenterX =x;}
   public int getX(){return (int)myCenterX;}
   public void setY(int y){myCenterY=y;}
   public int getY(){return (int)myCenterY;} 
   public void setDirectionX(double x){myDirectionX= x;}  
   public double getDirectionX(){return myDirectionX;}   
   public void setDirectionY(double y){myDirectionY= y;}   
   public double getDirectionY(){return myDirectionY; }   
   public void setPointDirection(int degrees){myPointDirection= degrees;}  
   public double getPointDirection(){return myPointDirection;
 }
   
  public void show(){
    fill(255,0,43);
    stroke(255,0,43);
    ellipse((int)myCenterX, (int)myCenterY, 9, 9);
  }
  public void move (){      
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
    if(myCenterX >width){        
      red.remove(this);    
    }    
    else if (myCenterX<0){     
      red.remove(this);     
    }    
    if(myCenterY >height){    
      red.remove(this);  
    }   
    else if (myCenterY < 0){     
      red.remove(this);   
    }   
  }  
}
