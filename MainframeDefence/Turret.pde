class Turret extends GameObject
{
  
  Turret(float x, float y)
  {
    pos.x = x;
    pos.y = y;
  }
  
  void render()
  {
    fill(255);
    rect(pos.x + 25, pos.y + 25, 50, 50);
    fill(255, 0, 0);
    ellipse(pos.x + 50, pos.y + 50, 25, 25);
    stroke(255, 0, 0);
    line(pos.x + 50, pos.y , pos.x + 50, pos.y + 100);
    line(pos.x , pos.y + 50 , pos.x + 100, pos.y + 50);
    
    noFill();
    //ellipse(pos.x + 50, pos.y + 50, 500, 500);
    
    noStroke();
  }
  
  void update()
  {
  }
  
}// End class turret

