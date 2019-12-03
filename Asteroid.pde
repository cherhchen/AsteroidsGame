class Asteroid extends Floater 
{
	private int rotSpeed;
	public Asteroid() 
	{
		corners = 7;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 0;
		yCorners[0] = -32;
		xCorners[1] = -24;
		yCorners[1] = -16;
		xCorners[2] = -18;
		yCorners[2] = 12;
		xCorners[3] = -12;
		yCorners[3] = 16;
		xCorners[4] = 24;
		yCorners[4] = 12;
		xCorners[5] = 28;
		yCorners[5] = -20;
		xCorners[6] = 16;
		yCorners[6] = -32;
		myColor = color(120, 119, 115);
    	myCenterX = Math.random()*800;
    	myCenterY = Math.random()*800;
    	myDirectionX = Math.random()*6-3;
    	myDirectionY = Math.random()*6-3;
    	myPointDirection = 0;
    	rotSpeed = (int)(Math.random()*10)-5; 
	}
	public void move()
	{
		turn(rotSpeed);
		super.move();
	}
	public void setCenterX(double m) 
	{
		myCenterX = m;
	}
	public void setCenterY(double n) 
	{
		myCenterY = n;
	}
	public void setDirectionX(double m) 
	{
		myCenterX = m;
	}
	public void setDirectionY(double n) 
	{
		myCenterY = n;
	}
}