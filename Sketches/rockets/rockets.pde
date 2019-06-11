
PVector gravity = new PVector(0, 0.02); 
ArrayList<Rocket> rockets = new ArrayList <Rocket>();

void setup() {
  fullScreen();
  //size(800,800);
  colorMode(HSB);
}

void draw() {
  background(0);
  if (random(1)<0.08) {
    rockets.add(new Rocket(random(width), random(600, height), new PVector(0, random(-4, -6))));
  }

  for (int i=rockets.size()-1;i>=0;i--) {
    rockets.get(i).update();
    if (rockets.get(i).done) {
      rockets.remove(rockets.get(i));
    }
  }
}
