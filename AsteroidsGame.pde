Spaceship bob;
public void setup() 
{
	size(400,400);
  	bob = new Spaceship();
}
public void draw() 
{
	background(0);
	bob.show();
	bob.move();
}
public void keyPressed() {
	if (keyCode == 37) {
		bob.myPointDirection-=5;
	}
	if (keyCode == 39) {
		bob.myPointDirection+=5;
	}
	if (keyCode == 38) {
		bob.myDirectionX+=0.7;
		bob.myDirectionY+=0.7;
	}
	if (keyCode == 40) {
		 
	}
}

