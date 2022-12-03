class Spaceship extends Floater  
{   
 public Spaceship(){
   corners = 6;
   xCorners = new int[] {-8, 16, -8, -1, -12, -1};
   yCorners = new int[] {-8, 0, 8, 4, 0, -4};
   myColor = color(255,255,255);
   myCenterX = 200;
   myCenterY = 200;
   myXspeed = 0;
   myYspeed = 0;
   myPointDirection = 0;
 }
 
 public void setXspeed(double x){
   myXspeed = x;
 }
 
 public void setYspeed(double y){
   myYspeed = y;
 }
 
 public void hyperspace(){
 myCenterX = (int)(Math.random()*400);
 myCenterY = (int)(Math.random()*400);
 myPointDirection = (int)(Math.random()*360);
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
