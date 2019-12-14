class Asteroid extends Floater {
	private int rotSpeed;
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
	public Asteroid() {
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -10;
		yCorners[0] = -16;
		xCorners[1]= 14;
		yCorners[1] = -16;
		xCorners[2] = 20;
		yCorners[2] = 0;
		xCorners[3] = 10;
		yCorners[3] = 18;
		xCorners[4] = -10;
		yCorners[4] = 16;
		xCorners[5] = -20;
		yCorners[5] = 0;
	myColor = 97;
	myCenterX = Math.random()*500 + 1;
	myCenterY = Math.random()*500 +1;
	myDirectionX= Math.random()*1.5;
	myDirectionY= Math.random()*1.5;
	myPointDirection = 90;
	rotSpeed = (int)(Math.random()*6);
}
	public void move() {
		turn(rotSpeed);
		super.move();
	}
}