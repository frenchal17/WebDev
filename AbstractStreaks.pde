void setup() {
  size(300, 300);
  background(200, 200, 200);
}

float xcoor = 0;
float ycoor = 0;
float col = 0;
float sel = 0;
float rad = 50;

void draw() {
  noStroke();
  xcoor = random(25, 250);
  ycoor = random(25, 250);
  sel = (int) random(0, 6);
  col = random(40, 120);

  if (sel == 1) {
    for (float r = 1000; r > 0; r--) {
      if ((r % 100) == 0) {
        fill(0, 0, col);
        ellipse(xcoor, ycoor, r/100, r/100);
        xcoor = xcoor + 15;
        ycoor = ycoor + 15;
        col = col + 30;
      }
    }
  }

  else if (sel == 2) {
    for (float r = 1000; r > 0; r--) {
      if ((r % 100) == 0) {
        fill(0, col, 0);
        ellipse(xcoor, ycoor, r/100, r/100);
        xcoor = xcoor + 15;
        ycoor = ycoor + 15;
        col = col + 30;
      }
    }
  }

  else if (sel == 3) {
    for (float r = 1000; r > 0; r--) {
      if ((r % 100) == 0) {
        fill(col, 0, 0);
        ellipse(xcoor, ycoor, r/100, r/100);
        xcoor = xcoor + 15;
        ycoor = ycoor + 15;
        col = col + 30;
      }
    }
  }

  else if (sel == 4) {
    for (float r = 1000; r > 0; r--) {
      if ((r % 100) == 0) {
        fill(col, col, 0);
        ellipse(xcoor, ycoor, r/100, r/100);
        xcoor = xcoor + 15;
        ycoor = ycoor + 15;
        col = col + 30;
      }
    }
  }

  else if (sel == 5) {
    for (float r = 1000; r > 0; r--) {
      if ((r % 100) == 0) {
        fill(col, 0, col);
        ellipse(xcoor, ycoor, r/100, r/100);
        xcoor = xcoor + 15;
        ycoor = ycoor + 15;
        col = col + 30;
      }
    }
  }
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}

