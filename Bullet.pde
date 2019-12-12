class Bullet extends Floater
{
	public Bullet(Spaceship theShip)
	{
		myCenterX = bob.getCenterX();
		myCenterY = bob.getCenterY();
		myPointDirection = bob.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + bob.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + bob.getDirectionY();
		myColor = color(14, 240, 22);
	}
	public void show()
	{
		fill(myColor);
		noStroke();
		ellipse((float)myCenterX, (float)myCenterY, 8, 8);
	}
	public void move() {
		myCenterX += myDirectionX;    
		myCenterY += myDirectionY; 
	}
	public double getCenterX() {
    	return myCenterX;
    }
    public double getCenterY() {
    	return myCenterY;
    }
}