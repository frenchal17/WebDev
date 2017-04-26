void setup(){
  size(300,300);
  //background(255,255,255);
  background(0,0,0);
}

float x = 0;
float c = 0.05;
float r = 7;
float a;
float w = .8;

//Look at c = .05, 2, 3, 5
//Comment out stroke.
void draw(){
  a = 150 * sin(w * x); 
  x = x + c;
  fill(40,40,155 + 155 * sin(x));
  //stroke(255,255,255);
  float offset;
  for (offset = 0; offset < 8; offset += 0.1) {
    ellipse(2 + 40 * offset, 150 - a * sin(x + offset), r, r);
  }
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}

void mousePressed(){
  w = random(0,3);
}

