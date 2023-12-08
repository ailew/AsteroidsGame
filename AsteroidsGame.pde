Spaceship bob = new Spaceship();
Spaceship man = new Spaceship();
Star[] spaceSky = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();

public void setup() 
{
  size(1000,1000);
  for(int i = 0; i< spaceSky.length;i++)
   spaceSky[i] = new Star();
  for(int i = 0; i < 10; i++)
    asteroids.add(new Asteroid());
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i = 0; i< spaceSky.length;i++)
    spaceSky[i].show();
  for(int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
    float d = dist((float)bob.myCenterX, (float)bob.myCenterY, (float)asteroids.get(i).myCenterX, (float)asteroids.get(i).myCenterY);
    if(d < 10)
      asteroids.remove(i);
  }
}

public void keyPressed() {
  if (key == 'a')
    bob.turn(-20);
  if (key == 'd')
    bob.turn(20);
  if (key == 'w')
    bob.accelerate(3);
  if (key == 'w')
    bob.accelerate(-2);
  if (key == 's')
    bob.hyperspace();

}
