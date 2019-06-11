class Particle {
  PVector position; 
  PVector velocity = new PVector();

  Particle(float x, float y) {
    this.position = new PVector(x, y);
  }
  void update() {
    this.position.add(velocity);
  } 
  void applyForce(PVector f) {
    this.velocity.add(f);
  }
  void setVelocity(PVector v) {
    this.velocity.set(v);
  }
  void setPosition(PVector k) {
    this.velocity.set(k);
  }
  PVector getPosition() {
    return this.position;
  }
  void multVelocity(float v) {
    this.velocity.mult(v);
  }
  void show(float c, float f, boolean root) {
    fill(c, 255, 255, f);
    noStroke();
    if (root) {
      ellipse(this.position.x, this.position.y, 8, 8);
    } else {
      ellipse(this.position.x, this.position.y, 4, 4);
    }
  }
}
