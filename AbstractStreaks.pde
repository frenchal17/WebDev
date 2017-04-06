void setup() {
  size(300, 300);
  background(200, 200, 200);
  frameRate(25);
}

float xcoor = 0;
float ycoor = 0;
float col = 0;
int sel = 0;

void draw() {
  noStroke();
  xcoor = random(25, 250);
  ycoor = random(25, 250);
  sel = (int) random(0, 6);
  col = random(40, 120);

  for (float r = 100; r > 0; r--) {
    if ((r % 10) == 0) {
      switch(sel) {
        case 0:
          fill(0, 0, col);
          break;
        case 1:
          fill(0, col, 0);
          break;
        case 2:
          fill(col, 0, 0);
          break;
        case 3:
          fill(col, col, 0);
          break;
        case 4:
          fill(col, 0, col);
          break;
        case 5:
          fill(0, col, col);
          break;
        default:
          fill(0, 0, 0);
          break;
      }
      ellipse(xcoor, ycoor, r/10, r/10);
      xcoor = xcoor + 15;
      ycoor = ycoor + 15;
      col = col + 30;
    }
  }
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}

