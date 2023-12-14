//your variable declarations here
Star[] nightSky = new Star[200];
Spaceship bob = new Spaceship();
ArrayList<Asteroid> a = new ArrayList<>();
ArrayList<Bullet> b = new ArrayList<>();
public void setup()
{
  size(500, 500);
  for (int i = 0; i< nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 100; i++) {
    a.add(new Asteroid());
  }
  for (int i = 0; i < 100; i++) {
    b.add(new Bullet(bob));
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
  for (int i = 0; i < a.size(); i++) {
    (a.get(i)).move();
    (a.get(i)).show();
    if (dist((float)bob.getX(), (float)bob.getY(), (float)(a.get(i)).myCenterX, (float)(a.get(i)).myCenterY) <= 20) {
      a.remove(i);
    }

    for (int k = 0; k < b.size(); k++) {
      (b.get(i)).move();
      (b.get(i)).show();
      if (dist((float)bob.getX(), (float)bob.getY(), (float)(a.get(k)).myCenterX, (float)(a.get(k)).myCenterY) <= 20) {
      b.remove(i);
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
      bob.turn(180);
    }
    if (key == 'a') {
      bob.turn(180);
    }
  }
