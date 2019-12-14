class Bullet extends Floater {
	public void setX(int x) {
		myCenterX = x;
	}
	public int getX() {
		return (int)myCenterX;
	}
	public void setY(int y) {
		myCenterY = y;
	}
	public int getY() {
		return (int)myCenterY;
	}
	public void setDirectionX(double x) {
		myDirectionX = x;
	}
	public double getDirectionX() {
		return myDirectionX;
	}
	public void setDirectionY(double y) {
		myDirectionY = y;
	}
	public double getDirectionY() {
		return myDirectionY;
	}
	public void setPointDirection(int degrees) {
		myPointDirection = degrees;
	}
	public double getPointDirection() {
		return myPointDirection;
	}
	public Bullet(Spaceship theShip) {
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		myDirectionX = 5*Math.cos(myPointDirection) + theShip.getDirectionX();
		myDirectionY = 5*Math.sin(myPointDirection) + theShip.getDirectionY();
		myColor = #f567be;
		corners = 4;
		xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 4;
    yCorners[0] = 0;
    xCorners[1] = 0;
    yCorners[1] = 2;
    xCorners[2] = 4;
    yCorners[2] = 0;
    xCorners[3] = 0;
    yCorners[3] = -2;
	}
	public void move() {
		myCenterX += myDirectionX;
		myCenterY += myDirectionY;
	}
}