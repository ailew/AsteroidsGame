class Spaceship extends Floater{
  public Spaceship(){
  corners = 9;  //the number of corners, a triangular floater has 3   
  xCorners = new int[corners];   
  yCorners = new int[corners];
  xCorners[0] = -8;
  yCorners[0] = -8;
  xCorners[1] = 16;
  yCorners[1] = 0;
  xCorners[2] = -8;
  yCorners[2] = 8;
  xCorners[4] = -14;
  yCorners[4] = 4;
  xCorners[5] = -8;
  yCorners[5] = 4;
  xCorners[6] = -8;
  yCorners[6] = -4;
  xCorners[7] = -14;
  yCorners[7] = -4;
   myColor = 200;
   myCenterX = 500;
   myCenterY = 500;
   myXspeed = 0;
   myYspeed = 0;
   myPointDirection = 0;
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getPointDirection(){return myPointDirection;}
  public void hyperspace() {
   myCenterX = Math.random() * 1000;
   myCenterY = Math.random() * 1000;
   myPointDirection = Math.random() * 500;
   myXspeed = 0;
   myYspeed = 0;
  }
  public void accelerate (double dAmount){          
    double dRadians =myPointDirection*(Math.PI/180);    
    myXspeed += ((dAmount) * Math.cos(dRadians));    
    myYspeed += ((dAmount) * Math.sin(dRadians));
    if (myXspeed > 20) myXspeed = 20;
    if (myYspeed > 20) myYspeed = 20;
    if (myXspeed < -20) myXspeed = -20;
    if (myYspeed < -20) myYspeed = -20;
  }
  
  public void brake() {
    myXspeed = 0.1 * myXspeed;
    myYspeed = 0.1 * myYspeed;
  }
}






