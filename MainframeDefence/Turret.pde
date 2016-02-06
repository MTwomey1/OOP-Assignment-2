class Turret extends GameObject
{
  float x;
  float y;
  
  Turret(float x, float y)
  {
    this.x = x;
    this.y = y; 
  }
  
  void render()
  {
    fill(255);
    rect(x + 25, y + 25, 50, 50);
    fill(255, 0, 0);
    ellipse(x + 50, y + 50, 25, 25);
    stroke(255, 0, 0);
    line(x + 50, y , x + 50, y + 100);
    line(x , y + 50 , x + 100, y + 50);
    
    noFill();
    ellipse(x + 50, y + 50, 500, 500);
    
    noStroke();
  }
  
  void update()
  {
  }
  
}// End class turret

