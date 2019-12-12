Spaceship bob;
Star[] twinkle;
ArrayList <Asteroid> rock;
ArrayList <Bullet> ammo;
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
  	ammo = new ArrayList <Bullet> ();
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

	for (int a = 0; a < ammo.size(); a++) {
		ammo.get(a).show();
		//ammo.get(a).accelerate(0.1);
		ammo.get(a).move();
		for (int b = 0; b < rock.size(); b++) {
			if (dist((float)rock.get(b).getCenterX(), (float)rock.get(b).getCenterY(), (float)ammo.get(a).getCenterX(), (float)ammo.get(a).getCenterY()) < 40) {
				rock.remove(rock.get(b));
				ammo.remove(ammo.get(a));
				break;
			}
		}
	}
	for (int a = 0; a < ammo.size(); a++) {
		if (ammo.get(a).getCenterX() > 800 || ammo.get(a).getCenterX() < 0 || ammo.get(a).getCenterY() > 800 || ammo.get(a).getCenterY() < 0) {
			ammo.remove(ammo.get(a));
		}
	}
	if (rock.size() < 17) {
		for (int r = 0; r < 1; r++) {
			rock.add(new Asteroid());
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
		bob.setCenterX(Math.random()*800);
		bob.setCenterY(Math.random()*800);
		bob.turn((int)(Math.random()*360));
		bob.setDirectionX(0);
		bob.setDirectionY(0);
	}
	if (keyCode == 32) {
		ammo.add(new Bullet(bob));
	}
}

