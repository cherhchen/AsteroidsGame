class Spaceship extends Floater  
{   
    public Spaceship() {
    	corners = 4;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = -8;
    	yCorners[0] = -8;
    	xCorners[1] = 16;
    	yCorners[1] = 0;
    	xCorners[2] = -8;
    	yCorners[2] = 8;
    	xCorners[3] = -2;
    	yCorners[3] = 0;
    	myColor = color(255,255,255);
    	myCenterX = 400;
    	myCenterY = 400;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    }
    public void setDirectionX(double x) {
    	myDirectionX = x;
    }
    public void setDirectionY(double y) {
    	myDirectionY = y;
    }
    public void setCenterX(double x) {
    	myCenterX = x;
    }
    public void setCenterY(double y) {
    	myCenterY = y;
    }
    public double getCenterX() {
    	return myCenterX;
    }
    public double getCenterY() {
    	return myCenterY;
    }
     public double getDirectionX() {
    	return myDirectionX;
    }
    public double getDirectionY() {
    	return myDirectionY;
    }
    public double getPointDirection() {
    	return myPointDirection;
    }
    public void show() {
    	fill(myColor);   
    	stroke(myColor);    
    	translate((float)myCenterX, (float)myCenterY);
    	float dRadians = (float)(myPointDirection*(Math.PI/180));
    	rotate(dRadians);
    	beginShape();
    	for (int nI = 0; nI < corners; nI++)
    	{
      		vertex(xCorners[nI], yCorners[nI]);
    	}
    	endShape(CLOSE);

    	float poofx = -8;
    	float poofy = 0;
    	if (keyCode == 38) 
    	{
    	fill(217, 86, 50);
    	stroke(250, 250, 55);
    	ellipse(poofx, poofy, 10, 4);
    	}

    	rotate(-1*dRadians);
    	translate(-1*(float)myCenterX, -1*(float)myCenterY);
    }
}
