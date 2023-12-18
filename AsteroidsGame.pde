Spaceship bob = new Spaceship();
Star[] spaceSky = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullets> shots = new ArrayList <Bullets>();
public void setup() {
  size(1000,1000);
  for(int i = 0; i< spaceSky.length;i++)
   spaceSky[i] = new Star();
  for(int i = 0; i < 50;i++){
    asteroids.add(new Asteroid());
    asteroids.get(i).accelerate((int)(Math.random()*2)+1);
  }
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
    if(d <10)
      asteroids.remove(i);
  }
  for (int i = 0; i < shots.size(); i++) {
    shots.get(i).move();
    shots.get(i).show();
  }
  for (int i = 0; i < shots.size(); i++) {
    for(int j = 0;j < asteroids.size(); j++){
      float d2 = dist((float)shots.get(i).myCenterX, (float)shots.get(i).myCenterY,(float)asteroids.get(j).myCenterX, (float)asteroids.get(j).myCenterY);
      if(d2 < 18)
          asteroids.remove(i);
          shots.remove(i);      
          break;
    }
  }
}

public void keyPressed() {
  if (key == 'a')
    bob.turn(-4);
  if (key == 'd')
    bob.turn(4);
  if (key == 'w')
    bob.accelerate(0.6);
  if (key == 's')
    bob.brake();
  if (key == 'e')
    bob.hyperspace();
   if(key == 'q')
     shots.add(new Bullets(bob));

}


