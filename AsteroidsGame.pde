
Spaceship bob = new Spaceship();
Asteroid sally = new Asteroid();
Star [] nightSky = new Star [200];
 ArrayList <Asteroid> rocks;
 

public void setup ()
{ 
  rocks= new ArrayList <Asteroid>();
  for (int i = 0; i < 6; i++) {
    rocks.add(new Asteroid());
  }
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
  if ( key == '1'){
    bob.turn(-10);
  }
  if (key =='2'){
  bob.turn(10);
}
}
public void draw ()
{
  background(0);
  for (int i =0; i < rocks.size(); i++)
  {
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist(bob.getX(), bob.getY(),rocks.get(i).getX(), rocks.get(i).getY());
    if (d < 10)
      rocks.remove(i);
  }
  bob.move();
  bob.show();
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
}
