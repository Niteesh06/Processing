
class Node {
  PVector pos;
  int val;
  Node left = null;
  Node right = null;

  Node(float x, float y, int v) {
    this.pos= new PVector(x, y);
    this.val=v;
  }

  void show() {
    noStroke();
    fill(255);
    ellipse(this.pos.x, this.pos.y-7, 40, 40);
    textAlign(CENTER);
    fill(0);
    textSize(20);
    text(val, this.pos.x, this.pos.y);
  }
}
