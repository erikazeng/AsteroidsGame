class Bullet extends Floater {
  public Bullet(Spaceship bob) {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getPointDirection();
    accelerate(0.006);
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }

  public void show() {
    fill(200);
    ellipse((int)myCenterX, (int)myCenterY, 10, 10);
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
}
