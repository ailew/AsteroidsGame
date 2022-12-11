class Bullet extends Floater{
  public Bullet(Spaceship chans) {
    myCenterX = chans.getX();
    myCenterY = chans.getY();
    myXspeed = chans.getXspeed();
    myYspeed = chans.getYspeed();
    myPointDirection = chans.getPointDirection();
    accelerate(3);            
  }
  public void move() {
    myCenterX = myCenterX + myXspeed;
    myCenterY = myCenterY + myYspeed;

  }
  public void show() {
    noStroke();
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
   public double getBulletX() {
    return myCenterX;
  }
  public double getBulletY() {
    return myCenterY;
  }
}
