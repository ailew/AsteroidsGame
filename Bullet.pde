class Bullet extends Floater
{
  public Bullet (Spaceship su){
    myCenterX = su.getX();
    myCenterY = su.getY();
    myXspeed = su.getXspeed();
    myYspeed = su.getYspeed();
    myPointDirection = su.getPointDirection();
    accelerate(6.0);
  }
  
  public void show(){
    fill(142,154,255);
  ellipse((float)myCenterX, (float)myCenterY, 5, 5);
}
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
   public void setX(int x){
   myCenterX = x;
 }
   public int getX(){
    return (int)myCenterX;
   }
 
 public void setY(int y){
   myCenterY = y;
 }
    public int getY(){
     return (int)myCenterY;
   }
   
}
