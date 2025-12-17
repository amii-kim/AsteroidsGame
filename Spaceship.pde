
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
 public float getX() 
 { return (float) myCenterX; 
 }
public float getY() 
{ return (float) myCenterY; 
}
  public double getPointDirection(){
    return myPointDirection;
  }
 public double getmyYspeed(){
    return (float) myYspeed;
  }
  public double getmyXspeed(){
    return (float) myXspeed;
}
  public void setXSpeed (double num) {
  myXspeed = num;
  }
    public void setYSpeed (double num) {
  myYspeed = num;
  }
}
