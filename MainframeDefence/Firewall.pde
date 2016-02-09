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
    rect(x, y - 200, 50, 190);
    stroke(0);
    line(x, y , x, y - 200);
    line(x + 50, y, x + 50, y - 200);
    noStroke();
    noFill();
  }
  
  void update()
  {
    if(wall2 == 0)
    {
      gameObjects.remove(this);
    }
  }
  
}// End class turret

