class Firewall extends GameObject
{
  float x;
  float y;
  
  Firewall(float x, float y)
  {
    this.x = x;
    this.y = y; 
  }
  
  void render()
  {
    fill(255, 0, 0);
    noStroke();
    rect(x, y + 50, 50, 190);
    stroke(0);
    line(x, y + 50, x, y + 240);
    line(x + 50, y + 50, x + 50, y + 240);
    noStroke();
    noFill();
  }
  
  void update()
  {
  }
  
}// End class turret

