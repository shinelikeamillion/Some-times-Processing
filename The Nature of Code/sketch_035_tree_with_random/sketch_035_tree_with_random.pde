boolean loop;
void setup() {
  size(800, 600);
  strokeCap(SQUARE);
  loop = true;
}

void draw() {
  if(!loop) return;
  background(255);
  translate(width/2, height);
  branch(240, 6);
}

void branch(float len, float strength) {
  loop = false;
  if(len < 2) return;
  strokeWeight(strength);
  line(0, 0, 0, -len);
  translate(0, -len);
  
  len *= 0.6;
  strength = constrain(strength*0.8, 1, 6);
  int n = (int)random(1, 4);
  for (int i = 0; i < n; i++) {
    float theta = random(-PI/3, PI/3);
    pushMatrix();
    rotate(-theta);
    branch(len, strength);
    popMatrix();
  }
}

void mousePressed(){
  loop = true;
}
