class Bug extends GameObject
{
  float x;
  float y;
  float x2;
  float y2;
  
  Bug(float x, float y)
  {
    this.x = x;
    this.y = y; 
  }
  
  void update()
  {
    if(x < width * 0.92 && y == 25 )
    {
        x += 10;
     }
     if(x > width * 0.92 && y == 25)
     {
       x = width * 0.92;
     }
     
     if(x == width * 0.92 && y == 25)
     {
       y = 300;
        
      }
      if(y >= 300 && y < height *0.58) 
      {
        y += 5;
      }
      if(y > height * 0.58 && x == width * 0.92)
      {
        y = height * 0.58;
      }
      if(y == height * 0.58 && x == width * 0.92 && y2 == 0)
      {
        y2 = -230;
        x2 = -40;    
      }
      if(x2 == - 40 && y2 > -1580)
      {
       y2 -= 5;    
      }

  }
  
  void render()
  {
    pushMatrix();
      translate(x, y);
       
      pushMatrix();
      
      rotate(radians(90)); 
      
      if(x >= width * 0.92)
      {
        rotate(radians(90));
      }
      if(y == height * 0.58 && x == width * 0.92)
      {
        rotate(radians(90));
      }
      
      translate(x2,y2);
      
      stroke(0);
      scale(0.5);
      fill(0, 255, 0);
      rect(250, 100, 120, 250, 50);
      rect(270,80, 80, 30,100);
      strokeWeight(5);
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
      stroke(255);
      popMatrix();
    popMatrix();    
  }
}
