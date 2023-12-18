Spaceship bob = new Spaceship();
Star[] spaceSky = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullets> shots = new ArrayList <Bullets>();
public void setup() {
  size(1000,1000);
  for(int i = 0; i< spaceSky.length;i++){
   spaceSky[i] = new Star();
  }
  for(int i = 0; i < 100;i++){
    asteroids.add(new Asteroid());
    asteroids.get(i).accelerate((int)(Math.random()*2)+1);
  }
}
public void draw() {
  background(0);
  for(int i = 0; i< spaceSky.length;i++){
    spaceSky[i].show();
   }
  for(int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
    float d = dist((float)bob.myCenterX, (float)bob.myCenterY, (float)asteroids.get(i).myCenterX, (float)asteroids.get(i).myCenterY);
    if(d <20){
      asteroids.remove(i);
    }
  }
  for (int i = 0; i < shots.size(); i++) {
    shots.get(i).show();
    shots.get(i).move();
  }
  for (int i = 0; i < shots.size(); i++) {
    for(int j = 0; j < asteroids.size(); j++){
      float d2 = dist((float)shots.get(i).myCenterX, (float)shots.get(i).myCenterY,(float)asteroids.get(j).myCenterX, (float)asteroids.get(j).myCenterY);
      if(d2 < 20){
          asteroids.remove(j);
          shots.remove(i);      
          break;
      }
     }
   }
  bob.move();
  bob.show();
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
   if(key == ' ')
     shots.add(new Bullets(bob));

}
