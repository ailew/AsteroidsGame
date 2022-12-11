class Spaceship extends Floater  
{  
   public Spaceship () {
    myColor = color(255);
    corners = 4;
    xCorners = new int[] {-10, 18, -10, -4};
    yCorners = new int[] {-10, 0, 10, 0};
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myColor = color(255);
    myPointDirection = 0;
   }
   public void hyperspace(){
     myXspeed = 0;
     myYspeed = 0;
     myCenterX = (int)(Math.random()*500);
     myCenterY = (int)(Math.random()*500);
     myPointDirection = (int)(Math.random()*360);
  }
    public double getSpaceshipX(){
    return myCenterX;
    }
    public double getSpaceshipY(){
    return myCenterY;
    }
    public double getX(){
    return myCenterX;
  }
    public double getY(){
    return myCenterY;
  }
    public double getPointDirection(){
    return myPointDirection;
    }
   
   public double getXspeed(){
     return myXspeed;
   }
    public double getYspeed(){
     return myYspeed;
   }
}
