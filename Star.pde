Star[] sky = new Star[500];
class Star //note that this class does NOT extend Floater
{
  private int x, y;
  public Star()
  {
    x = (int)(Math.random() * 500);
    y = (int)(Math.random() * 500);
  }
  public void show()
  {
    ellipse(x, y, 1.5, 1.5);
  }
  //your code here
}
