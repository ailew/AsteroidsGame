Spaceship chan = new Spaceship();
Star[] nightSky = new Star[500];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    rock.add(new Asteroid());
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
  for(int i = 0; i < rock.size(); i++){
    rock.get(i).show();
    rock.get(i).move();
     float d = dist((float)chan.getX(),(float)chan.getY(),(float)rock.get(i).getX(),(float)rock.get(i).getY());
    if (d < 20)
      rock.remove(i);
  }
    if(keyPressed){
      if(key == 'w'){
        chan.accelerate(0.1);
      }
      if(key == 'a'){
        chan.turn(-3);
      }
      if(key == 's'){
        chan.accelerate(-0.1);
      }
      if(key == 'd'){
        chan.turn(3);
      }
      if(key == 'f'){
        chan.hyperspace();
      }
    }
}
