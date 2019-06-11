class Ground {
  PVector pos;
  PVector vel;

  Ground(float x,float y,PVector v) {
    this.pos = new PVector(x, y);
    this.vel = v;
  }
  void update() {
    this.pos.add(this.vel);
  }
  void show() {
    if (trex.state==-1) {
      image(imgs.get(39), 0, height-100);
    } else {
      image(imgs.get(39), this.pos.x, this.pos.y);
    }
  }
  void applyForce(PVector f){
    this.vel.add(f);
  }
}
