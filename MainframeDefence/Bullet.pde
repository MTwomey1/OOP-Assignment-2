class Bullet extends GameObject
{
  
  Bullet(float x, float y)
  {
    pos.x = x;
    pos.y = y;
    speed = 2.0f;
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
    
  }
}
