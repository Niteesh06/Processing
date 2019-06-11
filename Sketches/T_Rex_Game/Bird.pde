class Bird {
  PVector pos;
  PVector vel;

  Bird(PVector v) {
    this.pos = new PVector(width, bobs[frameCount%2]);
    this.vel= v;
  }
  void update(){
    this.pos.add(vel);
  }
  void show(){
    imageMode(CORNERS);
    image(banimation.get((frameCount/30)%2), this.pos.x, this.pos.y, this.pos.x-banimation.get((frameCount%30)%2).width, this.pos.y-banimation.get((frameCount%30)%2).height);
  }
  void applyForce(PVector f){
    this.vel.add(f);
  }
}
