class Star //note that this class does NOT extend Floater
{
  private int myX, myY, Colors;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    Colors = 255;
  }
  public void show()
  {
     noStroke();
     fill(Colors);
     ellipse(myX, myY, 5, 5);
  }
}
