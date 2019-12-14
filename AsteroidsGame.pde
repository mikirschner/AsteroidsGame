Spaceship bernard;
ArrayList <Asteroid> bertha = new ArrayList <Asteroid>();
ArrayList <Bullet> bob = new ArrayList <Bullet>();
Star[] gertrude = new Star[(int)(Math.random()*100)+8];
boolean forward, backwards, left, right = false;
boolean shooter = false;
int timeShoot = 0;
public void setup() 
{
  bernard = new Spaceship();
  size(500,500);
  for(int i = 0; i < gertrude.length; i++) {
  	gertrude[i] = new Star();
  }
  for (int j = 0; j < 10; j++) {
  	bertha.add(j, new Asteroid());
  }
}
public void draw() 
{
  background(76, 74, 84);
  bernard.show();
  bernard.move();
  for(int i = 0; i < bob.size(); i++) {
    bob.get(i).show();
    bob.get(i).move();
  if(bob.get(i).getX() > width || bob.get(i).getX() < 0 || bob.get(i).getY() > 500 || bob.get(i).getY() < 0){
    bob.remove(i);
  }
  }
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
  if (shooter == true) {
    bernard.shoot();
  }
 for(int i = 0; i < bob.size(); i++) {
    for(int j = 0; j < bertha.size(); j++) {
      if(dist(bertha.get(j).getX(),bertha.get(j).getY(),bob.get(i).getX(),bob.get(i).getY()) <= 8) {
        bob.remove(i);
        bertha.remove(j);
        break;
      }
    }
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
  else if (key == 'm') {
    shooter = true;
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
  else if (key == 'm') {
    shooter = false;
  }
}