Spaceship ufo = new Spaceship();
Stars [] sinsin = new Stars[500];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

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
}
