Spaceship bob;
Star[] twinkle;
Asteroid rock;
public void setup() 
{
	size(800,800);
  	bob = new Spaceship();
  	twinkle = new Star[500];
  	for (int i = 0; i < twinkle.length; i++) {
  		twinkle[i] = new Star();
  	}
  	rock = new Asteroid();
}
public void draw() 
{
	background(0);
	for (int j = 0; j < twinkle.length; j++) {
		twinkle[j].show();
	}
	bob.show();
	bob.move();
	rock.show();
}
public void keyPressed() {
	if (keyCode == 37) {
		bob.turn(-5);
	}
	if (keyCode == 39) {
		bob.turn(5);
	}
	if (keyCode == 38) {
		bob.accelerate(0.2);
	}
	if (keyCode == 40) {
		bob.setCenterX(Math.random()*400);
		bob.setCenterY(Math.random()*400);
		bob.turn((int)(Math.random()*360));
		bob.setDirectionX(0);
		bob.setDirectionY(0);
	}
}

