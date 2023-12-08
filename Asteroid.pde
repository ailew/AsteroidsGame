class Asteroid extends Floater{
  private double rotSpeed;
  private int speedOfTurn;
  private int negative[];
  private double randomSpeed;
  public Asteroid(){
   corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11 + (int)(Math.random()*9)-5;
    yCorners[0] = -8 + (int)(Math.random()*9)-5;
    xCorners[1] = 7 + (int)(Math.random()*9)-5;
    yCorners[1] = -8 + (int)(Math.random()*9)-5;
    xCorners[2] = 13 + (int)(Math.random()*9)-5;
    yCorners[2] = 0 + (int)(Math.random()*9)-5;
    xCorners[3] = 10 + (int)(Math.random()*9)-5;
    yCorners[3] = 14 + (int)(Math.random()*9)-5;
    xCorners[4] = -11 + (int)(Math.random()*9)-5;
    yCorners[4] = 8 + (int)(Math.random()*9)-5;
    xCorners[5] = -5 + (int)(Math.random()*9)-5;
    yCorners[5] = 0 + (int)(Math.random()*9)-5;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*5)-3;
    myYspeed = (int)(Math.random()*5)-3;
    myColor = color(147,136,136);
    myPointDirection = 0;
    rotSpeed = (int)(Math.random()*8)+1;
    myColor = color(255,255,255);
    negative = new int []{-1, 1};
    randomSpeed = negative[(int)(Math.random()*negative.length)];
    //System.out.println(randomSpeed);
    myCenterX = (int)(Math.random()*700)-300;
    myCenterY = (int)(Math.random()*700)-300;
    myXspeed = (int)(Math.random()*3)-1*randomSpeed;
    myYspeed = (int)(Math.random()*3)-1*randomSpeed;
    myPointDirection = (int)(Math.random()*360);
  }
  
  public void move(){
   turn(rotSpeed);
   super.move();
}
}
