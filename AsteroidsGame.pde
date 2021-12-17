//your variable declarations here
Spaceship bob = new Spaceship();
ArrayList <Asteroid> Asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> Bullets = new ArrayList <Bullet>();
public void setup() 
{
  //your code here
  size(500, 500);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  for (int i = 0; i < 50; i++)
  {
    Asteroids.add(new Asteroid());
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
  for (int i = 0; i < Asteroids.size(); i++)
  {
    Asteroids.get(i).move();
    Asteroids.get(i).show();
    float distance = dist((float)Asteroids.get(i).getMyCenterX(), (float)Asteroids.get(i).getMyCenterY(), (float)bob.getX(), (float)bob.getY());
    if (distance < 15)
      Asteroids.remove(i);
  }
  for (int i = 0; i < Bullets.size(); i++)
  {
    Bullets.get(i).show();
    Bullets.get(i).move();
    for (int j = 0; j < Asteroids.size(); j++)
    {
      float distance1 = dist((float)Asteroids.get(j).getMyCenterX(), (float)Asteroids.get(j).getMyCenterY(), (float)Bullets.get(i).getMyCenterX1(), (float)Bullets.get(i).getMyCenterY1());
      if (distance1 < 15)
      {
        Asteroids.remove(j);
        Bullets.remove(i);
        break;
      }
    }
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
  if (key == 'g')
  {
    Bullets.add(new Bullet(bob));
  }
}
