class Dot {
  PVector pos;
  PVector vel;
  int i=0;
  float fitness;

  ArrayList<PVector> directions = new ArrayList<PVector>();

  Dot() {
    pos = new PVector(width/2, height);
    for (int i=0; i<300; i++) {
      directions.add(PVector.random2D().mult(random(3, 15)));
    }
  }
  
  Dot(Dot Best){
    pos = new PVector(width/2, height);
    for (int i=0; i<300; i++) {
      directions.add(Best.directions.get(i));
    }  
  }

  void update() {
    vel= directions.get(i);
    pos.add(vel); 
    i++;
    vel.limit(10);
    if (i>=directions.size()) {
      genend=true;
      i=0;
    }
  }

  void show() {
    fill(255);
    noStroke();
    ellipse(pos.x, pos.y, 2, 2);
  }

  float fitness() {
    float f=dist(this.pos.x, this.pos.y, width/2, 20);
    return f;
  }
}
