class Cloud{
  PVector pos;
  PVector vel;
  
  Cloud(){
    pos = new PVector(width,random(50,200));
    vel = new PVector(-4,0);
  }
  void update(){
    pos.add(vel);
  }
  void show(){
    image(imgs.get(2),this.pos.x,this.pos.y);
  }
  void applyForce(PVector f){
    this.vel.add(f);
  }

}
