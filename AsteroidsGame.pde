Spaceship ufo = new Spaceship();
Stars [] sinsin = new Stars[400];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> bang = new ArrayList <Bullet>();

public void setup() 
{
  size(500, 500);
  for (int i = 0; i < sinsin.length; i++)
  {
    sinsin[i] = new Stars();
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
  for (int i = 0; i < sinsin.length; i++)
  {
    sinsin[i].show();
  }
  
  for (int i = 0; i< rocks.size(); i++)
  {
    rocks.get(i).show();
    int sx = ufo.getX();
    int sy = ufo.getY();
    int ax = rocks.get(i).getX();
    int ay = rocks.get(i).getY();
    int shipToAsteroid = (int)(dist(sx, sy, ax, ay));
    if (shipToAsteroid < 30)
      rocks.remove(i);
    else
      rocks.get(i).move();
  }
  ufo.show();
  ufo.move();
  for (int i = 0; i < bang.size();i++)
  {
  bang.get(i).show();
  bang.get(i).move();
}

  for (int i = 0; i < bang.size(); i++)
  {
    bang.get(i).show();
    bang.get(i).move();
 
    for (int i2 = rocks.size()-1; i2 >= 0; i2--)
    {
      int cx = bang.get(i).getX();
      int cy = bang.get(i).getY();
      int bx = rocks.get(i2).getX();
      int by = rocks.get(i2).getY();
      int d2 = (int)(dist(cx, cy, bx, by));
      if ( d2 < 20)
      {
        rocks.remove(i2);
        bang.remove(i);
        break;
      }
    }
  }
}
  
  
  
public void keyPressed()
{
  if (key == 'd')
  {
    ufo.turn(4);
  }
  if (key == 'a')
  {
    ufo.turn(-4);
  }
  if (key == 'w')
  {
    ufo.accelerate(.2);
  }
  if (key == 's')
  {
    ufo.accelerate(-.2);
  }
  if (key == ' ')
  {
    ufo.setDirectionX(0);
    ufo.setDirectionY(0);
    ufo.setX((int)(Math.random()*500));
    ufo.setY((int)(Math.random()*500));
  }
  if (key == 'k')
  {
    Bullet x = new Bullet(ufo);
    bang.add(x);
  }
}
