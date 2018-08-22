float theta;
void setup() {
  size(800, 600);
  theta = PI/6;
}

void draw() {
  background(255);
  if(mouseX > 0) theta = map(mouseX, 0, width, 0, PI/2);
  translate(width/2, height);
  branch(240);
}

void branch(float len) {
  if(len < 2) return;
  line(0, 0, 0, -len);
  translate(0, -len);
  
  len *= 0.6;
  
  pushMatrix();
  rotate(-theta);
  branch(len);
  popMatrix();
  
  pushMatrix();
  rotate(theta);
  branch(len);
  popMatrix();
}
