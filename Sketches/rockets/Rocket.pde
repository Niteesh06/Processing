
class Rocket {
  float rocketColor = random(255);
  Particle root;
  boolean split=false;
  boolean stop=false;
  boolean explode=false;
  boolean done=false;
  float Lifespan =255;
  ArrayList <Particle> particles = new ArrayList<Particle>();

  Rocket(float x, float y, PVector v) {
    this.root = new Particle(x, y);
    this.root.setVelocity(v);
  }

  void update() {
    if (this.split && !this.stop) {
      for (int i=0; i<100; i++) {
        this.particles.add(new Particle(this.root.position.x, this.root.position.y));
        this.particles.get(i).setVelocity(PVector.random2D());
        this.particles.get(i).multVelocity(random(0.2, 0.8));
      }
      this.stop=true;
    }
    if (this.root.velocity.y>=0) {
      this.split=true; 
      this.explode=true;
    }
    if (!this.explode) {
      root.update();
      root.applyForce(gravity);
      root.show(this.rocketColor, 255, true);
    } else {
      for (int i=particles.size()-1; i>=0; i--) {
        particles.get(i).update();
        particles.get(i).applyForce(gravity);
        particles.get(i).show(this.rocketColor, this.Lifespan, false);
        Lifespan-=0.01;
      }

      if (particles.size()!=0) {
        if (particles.get(0).position.y>height) {
          this.done=true;
        }
        if (this.Lifespan<=0) {
          this.done=true;
        }
      }
    }
  }
}
