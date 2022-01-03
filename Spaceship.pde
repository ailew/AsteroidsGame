class Spaceship extends Floater  
{   
  //your code here
  //don't need to make member variables private, already declared, just initialize them
  //don't need to reinitialize the member variables, they are inherited from Floater class
  public Spaceship()
  {
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -1;
    yCorners[3] = 0;
    myColor = color(255);
    myPointDirection = 0;
  }
  public void setXspeed(int n)
  {
    myXspeed = n;
  }
  public void setYspeed(int n)
  {
    myYspeed = n;
  }
  public double getXspeed()
  {
    return myXspeed;
  }
  public double getYspeed()
  {
    return myYspeed;
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
  public double getPointDirection()
  {
    return myPointDirection;
  }
  public void hyperspace()
  {
    bob.myCenterX = ((int)(Math.random() * 500));
    bob.myCenterY = ((int)(Math.random() * 500));
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.turn(Math.random() * 360);
  }
  public void brake()
  {
    myXspeed = 0;
    myYspeed = 0;
  }
}
