int[] xCornerBullet {-4,0,4,0};
int[] yCornerBullet {0,2,0,-2};
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
	public Bullet(Spaceship theShip) {
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		myDirectionX = 5*Math.cos(myPointDirection) + theShip.getDirectionX();
		myDirectionY = 5*Math.sin(myPointDirection) + theShip.getDirectionY();
		myColor = #f567be;
		corners = 4;
		xCorners[i] = xCornerBullet[i];
		yCorners[i] = yCornerBullet[i];
		for(int i = 0; i < 4; i++) {
			xCorners[i] = xCornerBullet[i];
			yCorners[i] = yCornerBullet[i];
		}
	}
	public void move() {
		myCenterX += myDirectionX;
		myCenterY += myDirectionY;
	}
}