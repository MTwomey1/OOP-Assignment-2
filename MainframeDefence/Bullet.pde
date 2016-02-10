class Bullet extends GameObject
{
  AudioPlayer sound2;
  
  Bullet(float x, float y)
  {
    pos.x = x;
    pos.y = y;
    speed = 2.0f;
    
    sound2 = minim.loadFile("laser.mp3");
  }
  
  void render()
  {
    stroke(0);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    line(0, 0, 0, 0.002);
    popMatrix();    
    noStroke();
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
      
    forward.mult(speed);
    pos.add(forward);
        
    if(pos.y < -191.6)
    {
      gameObjects.remove(this);
    }    
  }
  
  void speak()
  {
    sound2.rewind();// Rewinds audio to beginning
    sound2.play();
  }
}
