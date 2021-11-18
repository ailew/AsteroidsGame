//your variable declarations here
Spaceship bob = new Spaceship();
public void setup() 
{
  //your code here
  size(500, 500);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
}
public void keyPressed() 
{
  if (key == 'a')
    bob.turn(-20);
  if (key == 'd')
    bob.turn(20);
  if (key == 'w')
    bob.accelerate(3);
  if (key == 's')
    bob.accelerate(-2);
  if (key == 'e')
  {
    bob.hyperspace();
  }
  if (key == 'q')
  {
    bob.brake();
  }
}
