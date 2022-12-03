Spaceship su = new Spaceship();
Star[] stars = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList<Asteroid>();

public void setup() 
{
  size(400,400);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  
    for(int i = 0; i < 14; i++){
    asteroids.add(new Asteroid());
    asteroids.get(i).accelerate((int)(Math.random()*2)+1);
    }
} // end of setup

public void draw(){ 
  background(2,6,26);
    for(int i = 0; i < stars.length; i++){
    stars[i].show();
    }
    
   for(int i = 0; i < asteroids.size() ; i++){
   asteroids.get(i).show();
   asteroids.get(i).move();  
  // float distance = dist(su.getX(), su.getY(), asteroids.get(i).getX(),asteroids.get(i).getY());
   //if (distance < 20)
   //asteroids.remove(i);
   }

   su.move();
   su.show();
} // end of draw

 public void keyPressed(){
   if (key == 'a'){ // left
     su.turn(-10);
   }
   if (key == 'd'){ //right
    su.turn(10); 
   }
   if (key == 'w'){ // forward
   su.accelerate(0.5);
   }
   if (key == 's'){ // backward
   su.accelerate(-0.5);
   }
   if (key == 'h'){ //hyperspace
     su.setXspeed(0);
     su.setYspeed(0);
     su.hyperspace();
   }
 } // end of keyPressed
