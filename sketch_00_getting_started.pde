void setup () {
  size (800, 600);
}

void draw () {
  if (mousePressed) {
    fill(255);
    ellipse(mouseX, mouseY, 80, 80);
    print("hi+");
  } 
}