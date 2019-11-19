class Asteroid extends Floater 
{
	public Asteroid() 
	{
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -4;
		yCorners[0] = 6;
		xCorners[1] = -4;
		yCorners[1] = 4;
		xCorners[2] = 0;
		yCorners[2] = -2;
		xCorners[3] = 4;
		yCorners[3] = -2;
		xCorners[3] = 6;
		yCorners[3] = 6;
		xCorners[3] = 0;
		yCorners[3] = 4;
		myColor = color(174, 177, 181);
    	myCenterX = 400;
    	myCenterY = 400;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
	}
}