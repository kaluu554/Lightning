//variables
int startX = ((int)(Math.random()*100)+200);
int startY = 0;
int endX = 0;
int endY = 0;
int col1 = (int)(Math.random()*200)+100;
int col2 = (int)(Math.random()*200)+100;
int col3 = (int)(Math.random()*200)+100;
int click = 0;
int diam = 10;
void setup()
{
  size(500, 500);
  strokeWeight(2);
  frameRate(10);
  background(0, 0, 0, 50);
}
void draw()
{
  fill(0, 0, 0, 30);
  rect(-20, -20, 550, 550);
  stroke(col1, col2, col3);
//lightning 
  while (endY < 500) {
    endX = startX + ((int)(Math.random()*50)-25); 
    endY = startY + ((int)(Math.random()*30)); 
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    //shock circle
    if ((click%10) == 0) {
      ellipse(250, 250, diam, diam);
      diam = diam + 20;
      if (diam > 700) {
        diam = 10;
      }
    }
  }
  //clouds
  fill(150);
  stroke(100);
  ellipse(0, 40, 200, 150);
  ellipse(100, 40, 200, 150);
  ellipse(200, 40, 200, 150);
  ellipse(300, 40, 200, 150);
  ellipse(400, 40, 200, 150);
  ellipse(500, 40, 200, 150);
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
    System.out.println(click);
  }
  
}
