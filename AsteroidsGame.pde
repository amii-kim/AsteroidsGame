Spaceship bob = new Spaceship();
Asteroid sally = new Asteroid();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
Star [] nightSky = new Star [200];
 ArrayList <Asteroid> rocks;
 


public void setup ()
{ 
    size (500, 500);
  rocks= new ArrayList <Asteroid>();
  for (int i = 0; i < 20; i++) {
    rocks.add(new Asteroid());
  }
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star ();
  }
}
public void keyPressed () {
  if (key == 'h') {
    bob. setXSpeed(0);
    bob.setYSpeed(0);
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
  if (key == ' ') {
    shots.add (new Bullet(bob));        
  }
}
public void draw ()
{
  background(0);
  for (int i =rocks.size()-1; i >= 0; i--)
  {
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist(bob.getX(), bob.getY(),rocks.get(i).getX(), rocks.get(i).getY());
    if (d < 10)
      rocks.remove(i);
  }
  bob.move();
  bob.show();
  for (int i = shots.size()-1 ; i >= 0; i--){
    Bullet b = shots.get(i);
    b.move();
    b.show();    
    
   for ( int j = rocks.size() -1; j >= 0; j--){
     Asteroid a = rocks.get(j);
     float d = dist((float)b.getX(), (float)b.getY(),a.getX(), a.getY());
    if (d < 10){
      rocks.remove(j);
      shots.remove(i);
      break;
    }
   }
 
  }
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
}
