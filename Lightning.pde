int startX = ((int)(Math.random()*100)+200);
int startY = 0;
int endX = 0;
int endY = 0;
int col1 = (int)(Math.random()*200)+100;
int col2 = (int)(Math.random()*200)+100;
int col3 = (int)(Math.random()*200)+100;
int click = 0;
void setup()
{
  size(500, 500);
  strokeWeight(3);
  frameRate(10);
  background(0, 0, 0, 50);
}
void draw()
{

  
  face();
  System.out.println(click);
  noStroke();
  fill(0, 0, 0, 50);
  rect(0, 0, 500, 500);
  stroke(col1, col2, col3);

  while (endY < 500) {
    endX = startX + ((int)(Math.random()*50)-25); 
    endY = startY + ((int)(Math.random()*30)); 
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = ((int)(Math.random()*100)+200);
  startY = 0;
  endX = 0;
  endY = 0;
  col1 = (int)(Math.random()*200)+100;
  col2 = (int)(Math.random()*200)+100;
  col3 = (int)(Math.random()*200)+100;
  if (mousePressed && (mouseButton == LEFT)) {
    click++;
  }
}


void face()
{
  strokeWeight(4);
  stroke(#B70000);
  int x = 0;
  if (click == 10) {
    for (int i = 0; i<20; i++) {
      fill(#B70000, 50);
      ellipse(250, 250, 30, 30);
      noFill();
      ellipse(250, 250, 100+x, 100+x);
      x+=20;
    }
    click = 0;
  }
}
