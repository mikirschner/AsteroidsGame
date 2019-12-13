int xCorn[] = {-8,-4,-6,-4,-8,16};
int yCorn[] = {8,4,0,-4,-8,0};
class Spaceship extends Floater  
{   
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
	Spaceship() {
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		for(int i = 0; i < 6; i++) {
			xCorners[i]= xCorn[i];
			yCorners[i]=yCorn[i];
		}
		myColor = (255, 217, 243);
		myCenterX = 250;
		myCenterY = 250;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 0;
	}
}