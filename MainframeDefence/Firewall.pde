class Firewall extends GameObject
{
  AudioPlayer fire;
  
  float x;
  float y;
  
  Firewall(float x, float y)
  {
    this.x = x;
    this.y = y; 
    
    fire = minim.loadFile("fire.mp3");
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
      wall2 = 3;
    }
    if(wall1 == 0)
    {
      gameObjects.remove(this);
      wall2 = 3;
    }      
  }
  
  void speak()
  {
    fire.rewind();
    fire.play();
  }
    
}// End class Firewall

