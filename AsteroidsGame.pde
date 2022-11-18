//your variable declarations here
Spaceship su = new Spaceship();
Star[] stars = new Star[200];
public void setup() 
{
  size(400,400);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw(){ 
  background(2,6,26);
    for(int i = 0; i < stars.length; i++){
    stars[i].show();
    }
   su.move();
   su.show();
}
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
 }
