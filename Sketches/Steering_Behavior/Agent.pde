class Agent {
  PVector pos = new PVector(400, 600);
  PVector vel = new PVector(0, 0);
  PVector dvel = new PVector(0, 0);
  boolean reached = false;

  Agent() {
  }

  void update(PVector goal) {
    if (!reached) {
      dvel.set(goal.sub(pos));
      vel.set(dvel.sub(vel));
      vel.limit(7);
      pos.add(vel);
    }
    if (dvel.mag()==0) {
      reached= true;
    }
    println(reached);
  }
  void show() {
    fill(255);
    ellipse(pos.x, pos.y, 5, 5);
  }
}
