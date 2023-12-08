class Spaceship extends Floater  
{   
    public Spaceship(){
    corners = 4;
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0] = -8;
   yCorners[0] = -8;
   xCorners[1] = 16;
   yCorners[1] = 2;
   xCorners[2] = 16;
   yCorners[2] = -2;
   xCorners[3] = -8;
   yCorners[3] = 8;
   myColor = 255;
   myCenterX = 500;
   myCenterY = 500;
   myXspeed = 0;
   myYspeed = 0;
   myPointDirection = 0;
  }
  public void hyperspace() {
   myCenterX = Math.random() * 1000;
   myCenterY = Math.random() * 600;
   myPointDirection = Math.random() * 500;
   myXspeed = 0;
   myYspeed = 0;
 }
}
