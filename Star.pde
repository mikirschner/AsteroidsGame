class Star
{
  private int myX;
  private int myY;
  public Star() {
  	myX = (int)(Math.random()*500)+1;
  	myY = (int)(Math.random()*500)+1;
  }
  public void show() {
  	fill(255, 252, 254);
  	ellipse(myX,myY,5,5);
  }
}
