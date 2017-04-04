float ptsX[] = new float[15];
float ptsY[] = new float[15];
float velocity[] = new float[15];
float strafe[] = new float[15];
int i, j, c = 0;
void setup() {
  size(300, 300);
  background(0, 0, 0);
  for (int i = 0; i < 15; i++) {
    populateData(i);
  }
}

void draw() {
  c++;
  noStroke();
  int opacity = (int)((mouseX + mouseY)/64);
  //fill(0,opacity);
  fill(0,10);
  if (c >= opacity) {
    rect(-5,-5,width + 5,height + 5);
    c = 0;
  }
  for (int j = 0; j < 15; j++) {
    fill(ptsY[j], ptsY[j] / 2.3, 0);
    ellipse(ptsX[j], ptsY[j], 5, 5);
    ptsY[j] -= velocity[j];
    ptsX[j] += strafe[j];
    velocity[j] -= 0.1;
    if (ptsY[j] > height) {
      populateData(j);
      if (strafe[j] == 1 || strafe[j] == -1) {
        strafe[j] = random(-5, 5);
      }
    }
  }
}

void populateData(int index) {
  ptsX[index] = random((width / 2) - 5, (width / 2) + 5);
  ptsY[index] = height;
  velocity[index] = random(1, 11);
  strafe[index] = random(-5, 5);
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
  if (key == 'q'){
    j += 1;
  }
  if (key == 'a'){
    j -= 1;
  }
}

