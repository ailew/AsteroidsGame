class Bullet extends Floater
{
  public Bullet(Spaceship bob)
  {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed= bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    accelerate((int)(Math.random() * 9 + 3));
  }
  public double getMyCenterX1()
  {
    return myCenterX;
  }
  public double getMyCenterY1()
  {
    return myCenterY;
  }
  public void show()
  {
    fill(255, 255, 255);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
}
