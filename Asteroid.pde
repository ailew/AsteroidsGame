class Asteroid extends Floater 
{
  protected double rotSpeed, AngVel;
  public Asteroid() 
  {
    AngVel = (Math.random() * 19 - 9);
    rotSpeed = 0;
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random() * 500);
    myXspeed = (int)(Math.random() * 5 - 2.5);
    myYspeed = (int)(Math.random() * 5 - 2.5);
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11 + (int)(Math.random() * 7 - 3.5);
    yCorners[0] = -8 + (int)(Math.random() * 7 - 3.5);
    xCorners[1] = 7 + (int)(Math.random() * 7 - 3.5);
    yCorners[1] = -8 + (int)(Math.random() * 7 - 3.5);
    xCorners[2] = 13 + (int)(Math.random() * 7 - 3.5);
    yCorners[2] = 0 + (int)(Math.random() * 7 - 3.5);
    xCorners[3] = 6 + (int)(Math.random() * 7 - 3.5);
    yCorners[3] = 10 + (int)(Math.random() * 7 - 3.5);
    xCorners[4] = -11 + (int)(Math.random() * 7 - 3.5);
    yCorners[4] = 8 + (int)(Math.random() * 7 - 3.5);
    xCorners[5] = -5 + (int)(Math.random() * 7 - 3.5);
    yCorners[5] = 0 + (int)(Math.random() * 7 - 3.5);
    myColor = color(125);
    myPointDirection = (int)(Math.random() * 360);
  }
  public double getMyCenterX()
  {
    return myCenterX;
  }
  public double getMyCenterY()
  {
    return myCenterY;
  }
  public void move()
  {
    super.move();
    turn(rotSpeed + AngVel);
  }
}
