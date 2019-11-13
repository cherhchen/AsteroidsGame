class Star //note that this class does NOT extend Floater
{
	double x, y, siz;
	int col;
  public Star() 
  {
  	x = Math.random()*800;
  	y = Math.random()*800;
  	siz = Math.random()*5;
  	col = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  public void show()
  {
  	noStroke();
  	fill(col);
  	ellipse((float)x,(float)y,(float)siz,(float)siz);
  }
}
