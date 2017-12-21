//your variable declarations here
Spaceship abc = new Spaceship();
Stars [] stellar = new Stars[400];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> pewpew = new ArrayList <Bullet>();
public void setup() 
{
  //your code here
  size(500, 500);
  for (int i = 0; i < stellar.length; i++)
  {
    stellar[i] = new Stars();
  }
  for (int i = 0; i < 20; i++)
  {
    Asteroid rock = new Asteroid();
    rocks.add(i, rock);
  }
  
}
public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i<stellar.length; i++)
  {
    stellar[i].show();
  }
  for (int i = 0; i< rocks.size(); i++)
  {
    rocks.get(i).show();
    int sx = abc.getX();
    int sy = abc.getY();
    int ax = rocks.get(i).getX();
    int ay = rocks.get(i).getY();
    int shipToAsteroid = (int)(dist(sx, sy, ax, ay));
    if (shipToAsteroid < 30)
      rocks.remove(i);
    else
      rocks.get(i).move();
  }
  abc.show();
  abc.move();
  for (int i = 0; i < pewpew.size();i++)
  {
  pewpew.get(i).show();
  pewpew.get(i).move();
}
  for ( int i = 0; i < pewpew.size(); i++)
  {
    pewpew.get(i).show();
    pewpew.get(i).move();
 
    for (int i2 = rocks.size()-1; i2 >= 0; i2--)
    {
     
      int cx = pewpew.get(i).getX();
      int cy = pewpew.get(i).getY();
      int bx = rocks.get(i2).getX();
      int by = rocks.get(i2).getY();
      int d2 = (int)(dist(cx, cy, bx, by));
      if ( d2 < 20)
      {
       
        rocks.remove(i2);
        pewpew.remove(i);
        break;
       
      }
    }
  }
}
public void keyPressed()
{
  if (key == 'f')
  {
    abc.turn(2);
  }
  if (key == 'h')
  {
    abc.turn(-2);
  }
  if (key == 'g')
  {
    abc.accelerate(.1);
  }
  if (key == ' ')
  {
    abc.setDirectionX(0);
    abc.setDirectionY(0);
    abc.setX((int)(Math.random() *500));
    abc.setY((int)(Math.random() *500));
  }
  if (key == 'b')
  {
    Bullet x = new Bullet(abc);
    pewpew.add(x);
  }
}