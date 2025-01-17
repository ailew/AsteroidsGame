class Bullet extends Floater {
  private float dRadians;
  public Bullet(Spaceship ship) {
    myCenterX = ship.myCenterX;
    myCenterY = ship.myCenterY;
    dRadians = (float) (ship.myPointDirection * (Math.PI/180));
    myPointDirection = ship.myPointDirection;
    myXspeed = 5 * Math.cos(dRadians) + ship.myXspeed;
    myYspeed = 5 * Math.sin(dRadians) + ship.myYspeed;
  }
  public void show() {
    fill(125,235,235);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 7, 7);
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }

  public float getX() {
    return (float) myCenterX;
  }

  public float getY() {
    return (float) myCenterY;
  }
}


