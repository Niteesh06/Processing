class dot {
  PVector pos;
  PVector vel;
  PVector acc;
  float fitness;
  Brain direction;
  int iterator=0;
  boolean dead;
  boolean goalReached;
  int minsteps;

  dot() {
    direction = new Brain();
    pos  = new PVector(400, 580);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    dead =false;
    goalReached=false;
    minsteps=9999;
  }

  void update() {
    if (!dead && !goalReached) {
      acc.set(direction.Genes.get(iterator));
      vel.add(acc);
      vel.limit(5);
      pos.add(vel);
      if (iterator>=direction.Genes.size()-1) {
        iterator =0;
        dead= true;
      } else {
        iterator++;
      }
      if (dist(pos.x, pos.y, goal.x, goal.y)<=8) {
        goalReached= true;
        minsteps=iterator-1;
        fitness+=500000;
      }
    }
    if (pos.x>width || pos.x<0 || pos.y>height || pos.y<0) {
      dead=true;
      fitness();
    }
  }

  void show() {
    if (!goalReached) {
      if (!dead) {
        noStroke();
        fill(255);
        ellipse(pos.x, pos.y, 6, 6);
      } else {
        noStroke();
        fill(255, 0, 0);
        ellipse(pos.x, pos.y, 6, 6);
      }
    }else{
      noStroke();
        fill(0, 255, 0);
        ellipse(pos.x, pos.y, 6, 6);
    }
  }

  void fitness() {
    fitness += 1+100000/dist(pos.x,pos.y,goal.x,goal.y);
  }
}
