Spaceship bob;
Star[] twinkle;
public void setup() 
{
	size(800,800);
  	bob = new Spaceship();
  	twinkle = new Star[500];
  	for (int i = 0; i < twinkle.length; i++) {
  		twinkle[i] = new Star();
  	}
}
public void draw() 
{
	background(0);
	bob.show();
	bob.move();
	for (int j = 0; j < twinkle.length; j++) {
		twinkle[j].show();
	}
}
public void keyPressed() {
	if (keyCode == 37) {
		bob.turn(-5);
	}
	if (keyCode == 39) {
		bob.myPointDirection+=5;
	}
	if (keyCode == 38) {
		bob.myDirectionX+=0.7;
		bob.myDirectionY+=0.7;
	}
	if (keyCode == 40) {
		bob.myCenterX = Math.random()*400;
		bob.myCenterY = Math.random()*400;
		bob.setDirectionX(0);
		bob.setDirectionY(0);
	}
}

