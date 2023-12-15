//your variable declarations here
Star[] nightSky = new Star[200];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> a = new ArrayList <Asteroid>();
ArrayList <Bullet> b = new ArrayList <Bullet>();
public void setup()
{
  size(500, 500);
  for (int i = 0; i< nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 10; i++) {
    a.add(new Asteroid());
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i<nightSky.length; i++) {
    nightSky[i].show();
  }
  bob.show();
  bob.move();
  for (int i = 0; i<a.size(); i++) {
    a.get(i).show();
    a.get(i).move();
    float collision = dist((float)bob.getX(), (float)bob.getY(), (float)a.get(i).getX(), (float)a.get(i).getY());
    if (collision < 10) {
      a.remove(i);
    }
  }

  for (int i = 0; i < b.size(); i++) {
    b.get(i).show();
    b.get(i).move();
    for (int u = 0; u < a.size(); u++) {
      float collision = dist((float)b.get(i).getX(), (float)b.get(i).getY(), (float)a.get(u).getX(), (float)a.get(u).getY());
      if (collision < 10) {
        b.remove(i);
        a.remove(u);
        break;
      }
    }
  }
}
public void keyPressed() {
    if (key == 'q') {
      bob.hyperspace();
    }
    if (key == 'w') {
      bob.accelerate(5);
    }
    if (key == 'd') {
      bob.turn(10);
    }
    if (key == 'a') {
      bob.turn(-10);
    }
    if (key == ' ') {
      b.add(new Bullet(bob));
    }
  }
