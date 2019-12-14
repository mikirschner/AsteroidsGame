Spaceship bernard;
ArrayList <Asteroid> bertha;
ArrayList <Bullet> bob = new ArrayList <Bullet>();;
Star[] gertrude = new Star[(int)(Math.random()*100)+8];
boolean forward, backwards, left, right = false;
public void setup() 
{
  bernard = new Spaceship();
  size(500,500);
  for(int i = 0; i < gertrude.length; i++) {
  	gertrude[i] = new Star();
  }
	bertha = new ArrayList <Asteroid>();
	for(int i = 0; i <= 100; i++) {
		bertha.add(i, new Asteroid());
	}
}
public void draw() 
{
  background(140, 143, 173);
  bernard.show();
  bernard.move();
  for(int i = 0; i < gertrude.length; i++) {
  	gertrude[i].show();
  }
  for(int i = 0; i < bertha.size(); i++) {
  	bertha.get(i).show();
  	bertha.get(i).move();
  }
  if (forward == true) {
  	bernard.accelerate(0.06);
  }
  if (backwards == true) {
  	bernard.accelerate(-0.06);
  }
  if (left == true) {
  	bernard.turn(10);
  }
  if (right == true) {
  	bernard.turn(-10);
  }
}
public void keyPressed() {
	if (key == 'w') {
		forward = true;
	}
	else if (key == 's') {
		backwards = true;
	}
	else if (key == 'a') {
		left = true;
	}
	else if (key == 'd') {
		right = true;
	}
	else if (key == 'p') {
		bernard.setX(((int)(Math.random()*400)));
		bernard.setY(((int)(Math.random()*400)));
		bernard.setDirectionX(0);
		bernard.setDirectionY(0);
		bernard.setPointDirection((int)Math.random()*361);
	}
}
public void keyReleased() {
	if (key == 'w') {
		forward = false;
	}
	else if (key == 's') {
		backwards = false;
	}
	else if (key == 'a') {
		left = false;
	}
	else if (key =='d') {
		right = false;
	}
}

