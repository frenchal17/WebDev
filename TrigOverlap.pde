void setup() {
  size(300, 300);
  background(0, 0, 0);
}

float x = 150;
float y = 150;
float t;
float c = .07;
float m = 150;
float xc = 0;
float yc = 20;
float zc = 0;
void draw() {
  t += c;
  stroke(xc*t, yc*t, zc*t);
  line(x + m * sin(t), y - m * cos(t), 
  x + m * sin(t + 2 * PI/3), y - m * cos(t + 2 * PI/3));
  line(x + m * sin(t + 2 * PI/3), y - m * cos(t + 2 * PI/3), 
  x + m * sin(t + 4 * PI/3), y - m * cos(t + 4 * PI/3));
  line(x + m * sin(t + 4 * PI/3), y - m * cos(t + 4 * PI/3), 
  x + m * sin(t + 2 * PI), y - m * cos(t + 2 * PI));
  if (m > 0) {
    m -= 1;
  } 
  else {
    t = 0;
    xc = random(0,50);
    yc = random(0,50);
    zc = random(0,50);
    m =  random(25,150);
    x =  random(25,275);
    y =  random(25,275);
  }
}

void keyPressed() {
  if (key == 's') {
    saveFrame("####.png");
  }
}

