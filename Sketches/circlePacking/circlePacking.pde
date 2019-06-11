
import processing.sound.*;

ArrayList<circle> circles;
int attemps=0;
PImage img;
ArrayList<PVector> spots;
SoundFile blop;

void setup() {
  size(604, 198); 
  circles= new ArrayList<circle>();
  spots= new ArrayList<PVector>();
  img = loadImage("2019.png");
  blop =new SoundFile(this, "Blop.wav");

  img.loadPixels();
  for (int i=0; i<width; i++) {
    for (int j=0; j<height; j++) {
      int index=i+j*width;
      color c=img.pixels[index];
      float b=brightness(c);
      if (b>1) {
        spots.add(new PVector(i, j));
      }
    }
  }
  colorMode(HSB);
}

void draw() {
  background(0);
  for (int i=30; i>0; i--) {
    newCircle();
    attemps++;
  }
  blop.play();
  if (attemps>10000) {
    println("FINISHED");
    noLoop();
  }
  for (circle c : circles) {
    c.display();
    c.grow();
    if (c.edges()) {
      c.growing=false;
    }
    if (c.growing) {
      for (circle other : circles) {
        if (c!=other) {
          float d=dist(c.x, c.y, other.x, other.y);
          if (d-4<other.radius+c.radius) {
            c.growing=false;
            break;
          }
        }
      }
    }
  }
}

void newCircle() {
  float d;
  boolean valid=true;
  int r=(int)random(0, spots.size());
  PVector spot=spots.get(r);
  float x = spot.x;
  float y = spot.y;
  circle newc= new circle(x, y);
  for (circle c : circles) {
    d= dist(newc.x, newc.y, c.x, c.y);
    if (d-4<c.radius) {
      valid=false;
    }
  }
  if (valid) {
    circles.add(newc);
  }
}
