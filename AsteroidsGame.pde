Spaceship bob = new Spaceship();
public void setup(){
 size(1000,1000);
 background(0);
 for(int i = 0; i< spaceSky.length;i++)
   spaceSky[i] = new Star();
}
public void draw(){
  background(0);
  bob.move();
  bob.show();
  for(int i = 0; i< spaceSky.length;i++)
    spaceSky[i].show();
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

