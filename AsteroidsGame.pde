//your variable declarations here
Spaceship abc = new Spaceship();
Stars [] notAnnie = new Stars[400];
public void setup() 
{
  //your code here
  size(500,500);
  for (int i = 0; i < notAnnie.length;i++)
  {
    notAnnie[i] = new Stars();
  }
}
public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i<notAnnie.length; i++)
  {
    notAnnie[i].show();
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