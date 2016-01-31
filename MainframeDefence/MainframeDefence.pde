PImage startscreen;
int screen; // Variable to change screen

void setup()
{
  size(displayWidth, displayHeight);
  Bug bug = new Bug(200, 25);
  gameObjects.add(bug);
  
  // Load images here to avoid memory problems
  startscreen = loadImage("server2.jpg");
  
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
    //Drawing Path
    fill(255);
    rect(0, height * 0.1, width * 0.9, height * 0.15);
    rect(width * 0.8, height * 0.15, 192.5, 432);
    rect(width * 0.1, height * 0.4, width * 0.7, height *0.15);
    rect(width * 0.1, height * 0.4, 192.5, 432);
    rect(width * 0.1, height * 0.7, width, height * 0.15);
    
    for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
    {
      GameObject go = gameObjects.get(i);
      go.update();
      go.render();
    }


  }// End screen 1
  
}// End draw()

