PImage startscreen, cpu;
int screen; // Variable to change screen
int health = 10;
int level = 1;
int memory = 50;
int i, begin, flag;

void setup()
{
  size(displayWidth, displayHeight);
  
  // Load images here to avoid memory problems
  startscreen = loadImage("server2.jpg");
  cpu = loadImage("CPU.jpg");
  
}// End Setup()

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void draw()
{
  if(screen == 0)
  {
    image(startscreen, 0, 0, width, height); // Show opeing image
    fill(127);
    stroke(0);
    strokeWeight(3);
    rect(width * 0.31, height * 0.05, 700, 200, 10);
    fill(255);
    String start = "Mainframe Defence"; // Main menu display text
    stroke(255);
    textSize(50);
    textAlign(CENTER);
    text(start, width / 2, height * 0.1);
    strokeWeight(12);
    line ((width / 2) - (textWidth(start) / 2), height * 0.12, (width / 2) + (textWidth(start) / 2), height * 0.12);// Underline
    
    textSize(20);
    text("Can you keep the system online?",width / 2, height * 0.15);
    
    // Green & Red Colour Tinting
    if(mouseX > width / 2.22 && mouseX < (width/2.22) + 200 && mouseY > height * 0.3 && mouseY < (height*0.3) + 100)
    {
      fill(0,255,0);
      rect(width / 2.22, height * 0.3, 200, 100, 10);
      if(mousePressed)
      {
        screen = 1;
      }
    }
    else
    {
      fill(0,150,0);
      rect(width / 2.22, height * 0.3, 200, 100, 10);
    }
    
    if(mouseX > width / 2.22 && mouseX < (width/2.22) + 200 && mouseY > height * 0.6 && mouseY < (height*0.6) + 100)
    {
      fill(255,0,0);
      rect(width / 2.22, height * 0.6, 200, 100, 10);
      if(mousePressed)
      {
        exit();
      }
    }
    else
    {
      fill(150, 0, 0);
      rect(width / 2.22, height * 0.6, 200, 100, 10);
    }
      
    fill(255);
    textSize(50);
    text("Play", width / 2, height * 0.36);
    text("Exit", width / 2, height * 0.66);
  }// End screen 0
  
  if(screen == 1)
  {
    background(127);
    strokeWeight(10);
    //Drawing Path
    fill(255);
    rect(0, height * 0.1, width * 0.9, height * 0.15);
    rect(width * 0.8, height * 0.15, 192.5, 432);
    rect(width * 0.1, height * 0.4, width * 0.7, height *0.15);
    image(cpu, 10, height * 0.38, 200, 200);
    rect(width  * 0.4, height * 0.7, 950, 300);
    stroke(0, 0, 200);
    rect(width * 0.5, height * 0.8, 150, 150, 5);//Turret select
    rect(width * 0.7, height * 0.8, 150, 150, 5);//Firewall select
    stroke(255, 0, 0);
    ellipse(width * 0.5 + 75, height * 0.8 + 75, 75, 75);
    line(width * 0.5 + 75, height * 0.8, width * 0.5 + 75, height * 0.8 + 150);
    line(width * 0.5, height * 0.8 + 75, width * 0.5 + 150, height * 0.8 + 75);
    fill(255, 0, 0);
    rect(width * 0.7 + 37.5, height * 0.8, 75, 150);
    stroke(0);
    line(width * 0.7 + 37.5, height * 0.8, width * 0.7 + 37.5, height * 0.8 + 150);
    line(width * 0.7 + 75 + 37.5, height * 0.8, width * 0.7 + 75 + 37.5, height * 0.8 + 150);
    stroke(0, 0, 150);
    noFill();
    rect(width * 0.7, height * 0.28, 100, 100, 5);
    rect(width * 0.45, height * 0.28, 100, 100, 5);
    rect(width * 0.2, height * 0.28, 100, 100, 5);
    rect(width * 0.325, height * 0.575, 100, 100, 5);
    rect(width * 0.575, height * 0.575, 100, 100, 5);
    stroke(127, 0, 0);
    rect(width * 0.33, height * 0.05, 50, 50);// Firewall box
    rect(width * 0.58, height * 0.05, 50, 50);// Firewall box
    fill(255, 0, 0);
    text("Select Security!",width * 0.65, height * 0.75);
    stroke(0);
    line (width * 0.55, height * 0.76, width * 0.55 + textWidth("Select security! "), height * 0.76);
    fill(0);
    text("Update", width * 0.45, height * 0.82);
    text("Turret", width * 0.45, height * 0.87);
    text("Firewall", width * 0.84, height * 0.85);
    fill(0, 0, 255);
    text("10MBs", width * 0.45, height * 0.95);
    text("15MBs", width * 0.84, height * 0.95);
    stroke(255);
    
    
    if(mousePressed)
    {
      if(mouseX > width * 0.5 && mouseX < (width * 0.5) + 150 && mouseY > height * 0.8 && mouseY < (height * 0.8) + 150)
      {     
          if(memory >= 10)
          {
            flag = 1;
          }
      }
      if(mouseX > width * 0.7 && mouseX < (width * 0.7) + 150 && mouseY > height * 0.8 && mouseY < (height * 0.8) + 150)
      {
        if(memory >= 15)
        {
          flag = 2;
        }
      }
    }
    
    if(flag == 1)
    {
      stroke(255,255,0);
      noFill();
      rect(width * 0.5, height * 0.8, 150, 150, 5);//Turret select
      stroke(255);
      if(mousePressed)
      {
        if(mouseX > width * 0.2 && mouseX < (width * 0.2) + 100 && mouseY > height * 0.28 && mouseY < (height * 0.28) + 100)
        {
          Turret turret = new Turret(width * 0.2, height * 0.28);
          gameObjects.add(turret);
          flag = 0;
          memory -=10;          
        }
        if(mouseX > width * 0.45 && mouseX < (width * 0.45) + 100 && mouseY > height * 0.28 && mouseY < (height * 0.28) + 100)
        {
          Turret turret = new Turret(width * 0.45, height * 0.28);
          gameObjects.add(turret);
          flag = 0;
          memory -=10;          
        }
        if(mouseX > width * 0.7 && mouseX < (width * 0.7) + 100 && mouseY > height * 0.28 && mouseY < (height * 0.28) + 100)
        {
          Turret turret = new Turret(width * 0.7, height * 0.28);
          gameObjects.add(turret);
          flag = 0;
          memory -=10;          
        }
        if(mouseX > width * 0.325 && mouseX < (width * 0.325) + 100 && mouseY > height * 0.575 && mouseY < (height * 0.575) + 100)
        {
          Turret turret = new Turret(width * 0.325, height * 0.575);
          gameObjects.add(turret);
          flag = 0;
          memory -=10;          
        }
        if(mouseX > width * 0.575 && mouseX < (width * 0.575) + 100 && mouseY > height * 0.575 && mouseY < (height * 0.575) + 100)
        {
          Turret turret = new Turret(width * 0.575, height * 0.575);
          gameObjects.add(turret);
          flag = 0;
          memory -=10;          
        }
      }
    }
    
    if(flag == 2)
    {
      stroke(255,255,0);
      noFill();
      rect(width * 0.7, height * 0.8, 150, 150, 5);//Firewall select
      stroke(255);
      if(mousePressed)
      {
        if(mouseX > width * 0.33 && mouseX < (width * 0.33) + 50 && mouseY > height * 0.05 && mouseY < (height * 0.05) + 50)
        {
          Firewall firewall = new Firewall(width * 0.33, height * 0.05);
          gameObjects.add(firewall);
          flag = 0;
          memory -=15;          
        }
        if(mouseX > width * 0.58 && mouseX < (width * 0.58) + 50 && mouseY > height * 0.05 && mouseY < (height * 0.05) + 50)
        {
          Firewall firewall = new Firewall(width * 0.58, height * 0.05);
          gameObjects.add(firewall);
          flag = 0;
          memory -=15;          
        }
      }
    }
    
    if(begin == 1)
    {
      if(i < 5)
      {
        if (frameCount % 120 == 0)
        {
          Bug bug = new Bug(0, 25);
          gameObjects.add(bug);
          i ++;
        }
      }      
    }

    for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
    {
      GameObject go = gameObjects.get(i);
      go.update();
      go.render();
    }
    
    fill(0, 255, 0);
    text("Health = " + health, width * 0.1, height * 0.8);
    fill(0, 0, 200);
    text("Memory = " + memory + " MBs", width * 0.13, height * 0.9);    

  }// End screen 1
  
  checkCollisions();
}// End draw()

void keyPressed() 
{
  if (key == CODED) 
  {
    if (keyCode == UP) 
    {
      begin = 1;
    }      
  }   
}

void checkCollisions()
{
 for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
 {
    GameObject go = gameObjects.get(i);
    if (go instanceof Bug)
    {
      for(int j = gameObjects.size() - 1 ; j >= 0   ;j --)
      {
        GameObject other = gameObjects.get(j);
        if (other instanceof Turret) // Check the type of a object
        {
          // Bounding circle collisions
          if (go.pos.dist(other.pos) < 300)
          {
            // Do some casting
            println("Hit");
            gameObjects.remove(go);
          }
        }
       
      }
    }
 } 
}



