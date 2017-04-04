void setup(){
  size(300,300);
  background(200,200,200);
}

//New project; ellipse making a bigger ellipse path, but tilted diagonally.
//Use 0.1, 5, 10, 100, 200
float x = 0;
float x2 = 0;
float y = 0;
float c = .01;
float ex = 0;
float ey = 0;
float ey2 = 0;
float ey3 = 0;

void draw(){
 // background(255,255,255);
  x = x + c;
  x2 = x2 + (c * 100);
  y = y + c;
  ex = (width/2) + 50 * sin(x);
  ey = (height/2) + 50 * cos(y);
  ey2 = (height/4) + 50 * cos(y);
  ey3 = (3 * height / 4) + 50 * cos(y);
  fill(0,125 + 125 * sin(x), 125 + 125 * sin(x));
  ellipse(ex + 30 * (1 / sin(x2)), ey - 30 * cos(x2), 5, 5);
  ellipse(ex + 30 * sin(x2), ey - 30 * (1 / cos(x2)), 5, 5);
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}

void mousePressed(){
  float x1 = random(0,255);
  background(x1,x1,x1);
}
