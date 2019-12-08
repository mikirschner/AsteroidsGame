double xCorn[] = {-7,-4,-2,0,2,4,6,7,6,7.5,8,8,0,-1,-2,-3,-6,-6};
double yCorn[] = {3,4,3,5,4.5,2,1.5,0.5,0,-1,-2,-3,-5,-4,-5,-5,-4,-1};
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
		corners = 18;
		xCorners = new int[corners];
		yCorners = new int[corners];
		for(int i = 0; i < 18; i ++) {
			xCorners[i] = (int)(1.5*xCorn[i]);
			yCorners[i] = (int)(1.5*yCorn[i]);
		}
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
		myCenterX+= myDirectionX;
		myCenterY+= myDirectionY;
	}
}