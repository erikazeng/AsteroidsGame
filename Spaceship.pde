class Spaceship extends Floater  
{   
    public Spaceship(){
      myColor = color(255,0,0);
      myCenterX=250;
      myCenterY=250;
      myXspeed=0;
      myYspeed=0;
      corners = 11;
      myPointDirection=0;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 16;
      yCorners[0] = 0;
      xCorners[1] = 2;
      yCorners[1] = 4;
      xCorners[10] = 2;
      yCorners[10] = -4;
      xCorners[2] = -3;
      yCorners[2] = 16;
      xCorners[9] = -3;
      yCorners[9] = -16;
      xCorners[3] = -6;
      yCorners[3] = 17;
      xCorners[8] = -6;
      yCorners[8] = -17;
      xCorners[4] = -6;
      yCorners[4] = 9;
      xCorners[7] = -6;
      yCorners[7] = -9;
      xCorners[5] = -11;
      yCorners[5] = 3;
      xCorners[6] = -11;
      yCorners[6] = -3;
    }
  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (Math.random()*500);
    myCenterY = (Math.random()*500);
    myPointDirection = (Math.random()*360);
  }
}
