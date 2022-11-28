Spaceship chan = new Spaceship();
Star[] nightSky = new Star[350];
public void setup() 
{
  size(500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++){
     nightSky[i].show();
    }
    chan.show();
    chan.move();
}
    public void keyPressed(){
      if(key == 'w'){
        chan.accelerate(0.1);
      }
      if(key == 'a'){
        chan.turn(-6);
      }
      if(key == 's'){
        chan.accelerate(-0.1);
      }
      if(key == 'd'){
        chan.turn(6);
      }
      if(key == 'f'){
        chan.hyperspace();
      }
    }

