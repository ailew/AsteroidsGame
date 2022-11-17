class Star //note that this class does NOT extend Floater
{
  private int myX, myY, Colors;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    Colors = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  public void show()
  {
     stroke(0,0,0);
     fill(Colors);
     ellipse(myX, myY, 5, 5);
  }
}
