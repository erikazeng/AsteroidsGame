class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 3; 
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0]= -8;
      yCorners[0] = -8;
      xCorners[1] = 16; 
      yCorners[1]=0;
      xCorners[2]= -8;
      yCorners[2] = 8;
      myColor = 255;
      myCenterX = myCenterY= 250; 
      myXspeed = myYspeed = 7.0;
      myPointDirection = 4.0;
    }
    public void Hyperspace(){
      myXspeed = myYspeed = 0; 
      myCenterX = (int)(Math.random()*600);
      myCenterY = (int)(Math.random()*600);
    }
    public void nomove(){
      myXspeed = myYspeed = 0; 
    }
}
