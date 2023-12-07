class Asteroid extends Floater {
  private double rotspeed;
  public Asteroid() {
    myColor = color(150);
    myCenterX = Math.random()*400;
    myCenterY = Math.random()*400;
    myXspeed = Math.random()*1 - .5;
    myYspeed = Math.random()*1 - .5;
    myPointDirection = Math.random()*360;
    corners = 6;
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    rotspeed = (Math.random()*100);
  }
  public void move() {
    turn(rotspeed);
    super.move();
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
