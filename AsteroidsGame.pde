//your variable declarations here
Spaceship abc = new Spaceship();
Stars [] stellar = new Stars[400];
Asteroid [] rocks = new Asteroid[10];
public void setup() 
{
  //your code here
  size(500,500);
  for (int i = 0; i < stellar.length;i++)
  {
    stellar[i] = new Stars();
  }
  for (int i = 0; i < rocks.length;i++)
  {
    rocks[i] = new Asteroid();
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
  for (int i = 0; i<rocks.length;i++)
  {
    rocks[i].show();
    rocks[i].move();
  }
  abc.show();
  abc.move();
  
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
  
  
}