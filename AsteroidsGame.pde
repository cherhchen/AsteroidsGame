Spaceship bob;
Star[] twinkle;
ArrayList <Asteroid> rock;
public void setup() 
{
	size(800,800);
  	bob = new Spaceship();
  	twinkle = new Star[500];
  	for (int i = 0; i < twinkle.length; i++) {
  		twinkle[i] = new Star();
  	}
  	rock = new ArrayList <Asteroid> ();
  	for (int r = 0; r < 20; r++) {
  		rock.add(new Asteroid());
  	}
}
public void draw() 
{
	background(0);
	for (int j = 0; j < twinkle.length; j++) {
		twinkle[j].show();
	}
	bob.show();
	bob.move();
	for (int q = 0; q < rock.size(); q++) {
		rock.get(q).show();
		if (dist((float)rock.get(q).getCenterX(), (float)rock.get(q).getCenterY(), (float)bob.getCenterX(), (float)bob.getCenterY()) < 35)
		{
			rock.remove(rock.get(q));
		}
		else 
		{
			rock.get(q).move();
		}
	}
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

