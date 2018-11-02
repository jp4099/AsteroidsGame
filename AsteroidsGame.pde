Spaceship ufo = new Spaceship();
Stars [] sinsin = new Stars[500];


public void setup() 
{
  size(500, 500);
  for (int i = 0; i < sinsin.length; i++)
  {
    sinsin[i] = new Stars();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < sinsin.length; i++)
  {
    sinsin[i].show();
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
