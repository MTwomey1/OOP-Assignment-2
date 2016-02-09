class Bug extends GameObject
{
  float x2;
  float y2;
  int speed = 2;
  
  Bug(float x, float y)
  {
    pos.x = x;
    pos.y = y;
  }
  
  void update()
  {
    if(pos.x < width * 0.92 && pos.y == 25 )
    {
        pos.x += speed;
    }
    
    if(pos.x > width * 0.92 && pos.y == 25)
    {
      pos.x = width * 0.92;
    }
     
    if(pos.x == width * 0.92 && pos.y == 25)
    {
      pos.y = 300;        
    }
    
    if(pos.y >= 300 && pos.y < height *0.58) 
    {
      pos.y += speed;
    }
    
    if(pos.y > height * 0.58 && pos.x == width * 0.92)
    {
       pos.y = height * 0.58;
    }
    
    if(pos.y == height * 0.58 && pos.x == width * 0.92 && y2 == 0)
    {
       y2 = -230;
       x2 = -40;    
    }
    
    if(x2 == - 40 && y2 > -1600)
    {
       y2 -= speed;   
    }
    
    if(y2 == -1600)
    {
       health -= 2;
       gameObjects.remove(this);
    }
    if(wall1 == 2 || wall1 == 1)
    {
      if(y2 == -1208)
      {
        gameObjects.remove(this);
        memory += 5;
        wall1 --;
      }
    }
    if(wall2 == 2 || wall2 == 1)
    {
      if(y2 == -698)
      {
        gameObjects.remove(this);       
        memory += 5; 
        wall2 --;
      }
    }

  }// End update()
  
  void render()
  {   
    pushMatrix();
    translate(pos.x, pos.y);
       
    pushMatrix();
      
    rotate(radians(90)); 
    
    if(pos.x >= width * 0.92)
    {
      rotate(radians(90));
    }
    
    if(pos.y == height * 0.58 && pos.x == width * 0.92)
    {
      rotate(radians(90));
    }
    
    translate(x2,y2);
    strokeWeight(5);
    stroke(0);
    scale(0.5);
    fill(0, 255, 0);
    rect(250, 100, 120, 250, 50);
    rect(270,80, 80, 30,100);
    
    line(280, 100, 240, 40);
    line(340, 100, 380, 40);
    
    line(260, 260, 220, 290);
    line(220, 290, 230, 340);
    line(230, 340, 220, 360);
    
    line(360, 260, 400, 290);
    line(400, 290, 390, 340);
    line(390, 340, 400, 360);
    
    line(260, 200, 225, 120);
    line(225, 120, 200, 123);
  
    line(360, 200, 395, 120);
    line(395, 120, 420, 123);
    noFill();
    //ellipse(320, 200, 300, 300);
    stroke(255);
    popMatrix();
    popMatrix();    
    noFill();
    println(y2);
  }// End render()
  
}// End Classs Bug
