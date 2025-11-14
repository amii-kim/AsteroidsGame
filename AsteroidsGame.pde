Spaceship bob = new Spaceship();
Star [] nightSky = new Star [200];

public void setup ()
{
  size (500, 500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star ();
  }
}
public void keyPressed () {
  if (key == 'h') {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.myCenterX= Math.random()*400;
    bob.myCenterY=Math.random()*400;
 
  }
  if(key == 'a'){
    bob.accelerate(1);
  }
  if ( key == 'r'){
    bob.turn(-16);
  }
}
public void draw ()
{
  background(0);
  bob.move();
  bob.show();

  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
}

