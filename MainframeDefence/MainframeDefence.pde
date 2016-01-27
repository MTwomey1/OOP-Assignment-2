PImage startscreen;
int screen; // Variable to change screen

void setup()
{
  size(displayWidth, displayHeight);
  
  // Load images here to avoid memory problems
  startscreen = loadImage("server2.jpg");
}// End Setup()

void draw()
{
  image(startscreen, 0, 0, width, height); // Show opeing image
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
  
  
  if(mouseX > width / 2.22 && mouseX < (width/2.22) + 200 && mouseY > height * 0.3 && mouseY < (height*0.3) + 100)
  {
    fill(0,255,0);
    rect(width / 2.22, height * 0.3, 200, 100, 10);
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
  
}// End draw()

