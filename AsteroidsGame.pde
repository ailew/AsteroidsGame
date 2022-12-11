Spaceship chan = new Spaceship();
Star [] nightSky = new Star[250];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
public void setup() 
{
  size(500, 500);
  background(0);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 15; i++) {
    asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  chan.show();
  chan.move();
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
  for (int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).move();
    asteroids.get(i).show();
    float d = dist((float)chan.getX(), (float)chan.getY(), (float)asteroids.get(i).getRockX(), (float)asteroids.get(i).getRockY());
    if (d < 20){
      asteroids.remove(i);
      break;
    }
    for (int a = 0; a < pew.size(); a++) {
      pew.get(a).move();
      pew.get(a).show();
      float b = dist((float)pew.get(a).getBulletX(), (float)pew.get(a).getBulletY(), (float)asteroids.get(i).getRockX(), (float)asteroids.get(i).getRockY());
      if (b < 20) {
        pew.remove(a);
        asteroids.remove(i);
        break;
      }
    }
  }

    if(keyPressed)
    {
      if(key == 'w')
      {
        chan.accelerate(0.1);
      }
      if(key == 'a')
      {
        chan.turn(-3);
      }
      if(key == 's')
      {
        chan.accelerate(-0.1);
      }
      if(key == 'd')
      {
        chan.turn(3);
      }
      if(key == 'f'){
        chan.hyperspace();
      }
      if (key == ' ')
       {
      pew.add(new Bullet(chan));

    }
  }
}
