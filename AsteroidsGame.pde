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
}
public void keyPressed() {
	if (keyCode == 65) {
		System.out.print("yay");
	}
}

