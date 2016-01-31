void setup()
{
  size(1500, 1500);
  
}
int x;

void draw()
{  
  if (frameCount % 2 == 0){
  background(255);
  pushMatrix();
  translate(x, 50);
  x += 1;
  pushMatrix();
  
  rotate(radians(90));
  translate(0,0);
  
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
  popMatrix();
  popMatrix();
}}
