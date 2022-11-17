class Spaceship extends Floater  
{  
   public Spaceship () {
    myColor = color(255);
    corners = 4;
    xCorners = new int[] {-10, 18, -10, -4};
    yCorners = new int[] {-10, 0, 10, 0};
    myCenterX = 500;
    myCenterY = 500;
    myXspeed = 0;
    myYspeed = 0;
    myColor = color(255);
    myPointDirection = 0;
   }
   public void hyperspace(){
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = (int)(Math.random()*360);
     myCenterX = (int)(Math.random()*1000);
     myCenterY = (int)(Math.random()*1000);
  }
}
