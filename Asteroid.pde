class Asteroid extends Floater
{
protected double rotSpeed; //randomly + or -
 public Asteroid(){
  corners = 6;
  xCorners = new int [corners];
  yCorners = new int [corners];
  xCorners[0] = -14;
  yCorners[0] = -6;
  xCorners[1] = 4;
  yCorners[1] = -12;
  xCorners[2] = 15;
  yCorners[2] = -2;
  xCorners[3] = 8;
  yCorners[3] = 11;
  xCorners[4] = -9;
  yCorners[4] = 13;
  xCorners[5] = -15;
  yCorners[5] = 2;
  myColor= color(255);
  myCenterX= Math.random()*400;
  myCenterY=Math.random()*400;
  myPointDirection=0;
  myXspeed = Math.random() * 4 - 2;
  myYspeed=Math.random() * 4 - 2;
  rotSpeed=Math.random() * 4 - 2;
}
public void move(){ 
 turn (rotSpeed);
 super.move();
}
public float getX() 
{ 
return (float) myCenterX; 
}
public float getY() 
{
return (float) myCenterY; 
}
}
