
PVector GOAL;
Agent test = new Agent();
void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  GOAL= new PVector(mouseX, mouseY);
  background(51);
  fill(255, 128, 0);
  ellipse(GOAL.x, GOAL.y, 10, 10); 
  test.update(GOAL.copy());
  test.show();
}
