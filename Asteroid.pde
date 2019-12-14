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
		return (int)myCenterY;;
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
		xCorn = new int[corners];
		yCorn = new int[corners];
		xCorn[0] = -5;
		yCorn[0] = -8;
		xCorn[1]= 7;
		yCorn[1] = -8;
		xCorn[2] = 10;
		yCorn[2] = 0;
		xCorn[3] = 5;
		yCorn[3] = 9;
		xCorn[4] = -5;
		yCorn[4] = 8;
		xCorn[5] = -10;
		yCorn[5] = 0;
	myColor = #ababab;
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