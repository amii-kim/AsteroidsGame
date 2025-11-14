class Spaceship extends Floater
{
  public Spaceship() {
    myColor= color(255);
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{ -8, 0, 8, 0};
    myCenterX= Math.random()*400;
    myCenterY=Math.random()*400;
    myPointDirection=0;
    myXspeed = 0;
    myYspeed=0;
  }
 public double getmyXspeed(){
  return myXspeed;
  }
  public void setXspeed(double x) 
  {
    myXspeed = x;
  }
   public void setYspeed(double y) 
  {
    myYspeed = y;
  }
 public double getmyYspeed(){
    return myYspeed;
  }
}
