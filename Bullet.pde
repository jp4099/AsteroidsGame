class Bullet extends Floater
{
  public bullet(){
    myCenterX = 250;
    myCenterY = 250;
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = (int)(5 * Math.cos(dRadians));
  
  /*
Intialize myCenterX and myCenterY of the bullet to be the same as the ship.
Initialize myPointDirection of the bullet to be the same as the direction the ship is pointing.
Initialize myDirectionX as 5 * Math.cos(dRadians) + the directionX of the ship
Initialize myDirectionY as 5 * Math.sin(dRadians) + the directionY of the ship
  */
  }
  
  public Bullet(Spaceship theShip){
    
  }
  
  public void show()
  {
    super.show();  
    //Override the show() method of the Floater class so that you can use circular bullets
  }
    
}
