class Trex { //<>//
  // state -1:start 0:ground 1:in air 2:duck 3:dead
  int state;
  PVector pos;
  PVector vel;
  int score=0;

  Trex() {
    state = -1;
    pos = new PVector(80, height-100+slack+20);
    vel = new PVector(0, 0);
  }

  void show() {
    imageMode(CORNERS);
    if (this.state==0) {
      image(animation.get((frameCount/10)%2), this.pos.x, this.pos.y, this.pos.x-animation.get((frameCount%10)%2).width, this.pos.y-animation.get((frameCount%10)%2).height);
    } else if (this.state==1) {
      image(imgs.get(31), this.pos.x, this.pos.y, this.pos.x-imgs.get(31).width, this.pos.y-imgs.get(31).height);
    } else if (state==2) {
      image(danimation.get((frameCount/10)%2), this.pos.x, this.pos.y, this.pos.x-danimation.get((frameCount/10)%2).width, this.pos.y-danimation.get((frameCount/10)%2).height);
    } else if (this.state>=3) {
      image(imgs.get(35), this.pos.x, this.pos.y, this.pos.x-imgs.get(35).width, this.pos.y-imgs.get(35).height);
      noLoop();
    }
  }
  void update() {
    if (state!=3 && state!=2) {  
      if (this.pos.y<height-100+slack) {
        this.vel.add(gravity);
        this.pos.add(vel);
        this.state=1;
      } else {
        this.vel.mult(0);
        this.pos.add(vel);
        this.state=0;
      }
    }
    if (state==2) {
      if (this.pos.y<height-100+slack) {
        this.vel.add(fgravity);
        this.pos.add(vel);
      }else {
        this.vel.mult(0);
        this.pos.add(vel);
      }
    }
  }
  void jump() {
    if (this.state==0) {
      this.vel.set(0, -8.5);
      this.pos.set(80, height-100+slack-1);
    }
  }
  void checkCollision() {
    for (Obstrucle obj : obs) {
      if (obj.pos.x-imgs.get(obj.i).width+15<this.pos.x && obj.pos.x>this.pos.x-imgs.get(1).width+18 &&obj.pos.y-imgs.get(obj.i).height+ 15<this.pos.y) {
        this.state=3;
        obj.vel.set(0, 0);
      }
    }
    for (Bird b : birds) {
      if (state!=2) {
        if (b.pos.x-imgs.get(4).width+15<this.pos.x && b.pos.x>this.pos.x &&b.pos.y>this.pos.y-imgs.get(1).height && b.pos.y-imgs.get(4).height+10<this.pos.y) {
          this.state=3;
          b.vel.set(0, 0);
        }
      } else {
        if (b.pos.x-imgs.get(4).width<this.pos.x && b.pos.x>this.pos.x &&b.pos.y>this.pos.y-imgs.get(37).height && b.pos.y-imgs.get(4).height<this.pos.y) {
          this.state=3;
          b.vel.set(0, 0);
        }
      }
    }
  }
}
