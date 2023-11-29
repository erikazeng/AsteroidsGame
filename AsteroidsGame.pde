//your variable declarations here
Star[] nightSky = new Star[200];
Spaceship bob = new Spaceship();
public void setup()
{
  size(500, 500);
  for (int i = 0; i< nightSky.length; i++) {
    nightSky[i] = new Star();
  }
}
public void keyPressed() {
  if (key == 'q') {
    bob.Hyperspace();
  }
   if (key == 'w') {
    bob.accelerate(5);
  }
  if (key == 'd'){
    bob.turn(90);
  }
  if (key == 'a'){
    bob.turn(90);
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
}
