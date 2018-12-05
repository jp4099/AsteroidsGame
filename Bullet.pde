class Bullet extends Floater
{
  /*
Intialize myCenterX and myCenterY of the bullet to be the same as the ship.
Initialize myPointDirection of the bullet to be the same as the direction the ship is pointing.
convert myPointDirection to radians with the following code: double dRadians =myPointDirection*(Math.PI/180);
Initialize myDirectionX as 5 * Math.cos(dRadians) + the directionX of the ship
Initialize myDirectionY as 5 * Math.sin(dRadians) + the directionY of the ship
  */
  
  public Bullet(Spaceship theShip){
    
  }
  
  public void show()
  {
    super.show();  
    //Override the show() method of the Floater class so that you can use circular bullets
  }
    
}
