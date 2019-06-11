
class Obstrucle {
  PVector pos;
  PVector vel;
  int i;

  Obstrucle(PVector v) {
  pos = new PVector(width, height-100+slack);
  vel = v;
  i = floor(random(4.9999,10.9));
  }
  void update() {
    this.pos.add(this.vel);
  }
  void show(){
    fill(51);
    rectMode(CORNERS);
    image(imgs.get(i),this.pos.x, this.pos.y,this.pos.x-imgs.get(i).width,this.pos.y-imgs.get(i).height);
  }
  void applyForce(PVector f){
    this.vel.add(f);
  }
}
