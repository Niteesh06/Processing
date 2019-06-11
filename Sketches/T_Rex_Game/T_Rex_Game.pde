ArrayList<Obstrucle> obs;
ArrayList<Bird> birds;
Trex trex;
ArrayList<Ground> g;
float slack;
PImage img;
boolean obsflag;
ArrayList <PImage> imgs;
ArrayList <PImage> numbers;
ArrayList <PImage> animation;
ArrayList <PImage> moon;
ArrayList <PImage> banimation;
ArrayList <PImage> danimation;
ArrayList <Cloud> cloud;
ArrayList <Digit> score;
int[] cobs={20, 99, 45, 75};
int[] bobs={235, 265};
int disposx;
int disposy;
Digit digit;

PVector gravity = new PVector(0, 0.5);
PVector fgravity = new PVector(0, 1);
PVector speed = new PVector(-0.0001, 0);

void setup() {
  size(700, 350);
  //fullScreen();
  trex =new Trex();
  disposx=width-100;
  disposy=height-200;
  g = new ArrayList<Ground>();
  g.add(new Ground(0, height-100, new PVector(-5, 0)));
  g.add(new Ground(1202, height-100, new PVector(-5, 0)));
  //Initialization
  slack =15;
  obsflag = true;
  obs = new ArrayList<Obstrucle>();
  birds = new ArrayList<Bird>();
  imgs = new ArrayList<PImage>();
  animation = new ArrayList <PImage>();
  danimation = new ArrayList <PImage>();
  numbers = new ArrayList <PImage>();
  moon = new ArrayList <PImage>();
  banimation = new ArrayList <PImage>();
  cloud = new ArrayList <Cloud>();
  score = new ArrayList <Digit>();
  img = loadImage("IMG_data.png");
  Image_init();
  cloud.add(new Cloud());
}

void draw() {
  background(255);

  //Moon
  image(moon.get((frameCount/100)%7), width-100, 50);

  if (frameCount%100 == randomInt(80, 99)) {
    cloud.add(new Cloud());
  }
  for (int i=cloud.size()-1; i>=0; i--) {
    cloud.get(i).update();
    cloud.get(i).show();
    cloud.get(i).applyForce(speed);
    if (cloud.get(i).pos.x<-48) {
      cloud.remove(i);
    }
  }
  for (int i=g.size()-1; i>=0; i--) {
    g.get(i).update();
    g.get(i).show();
    g.get(i).applyForce(speed);
    if (g.get(i).pos.x<-1202) {
      g.add(new Ground(1190, height-100, g.get(g.size()-1).vel));
      g.remove(i);
    }
    g.get(1).pos.x=g.get(0).pos.x+1202;
  }

  trex.update();
  trex.show();
  trex.checkCollision();

  if (random(1)<0.6) {
    if (obsflag) {
      if (obs.size()==0) {
        obs.add(new Obstrucle(g.get(0).vel));
      } else {
        obs.add(new Obstrucle(g.get(g.size()-1).vel));
      }
      obsflag = false;
    }
  } else {
    if (obsflag) {
      if (birds.size()==0) {
        birds.add(new Bird(new PVector(-5, 0)));
        obsflag = false;
      } else {
        birds.add(new Bird(g.get(g.size()-1).vel));
        obsflag = false;
      }
    }
  }
  if (frameCount%100 == cobs[(int)frameRate%4]) {
    obsflag = true;
  }
  for (int i=obs.size()-1; i>=0; i--) {
    obs.get(i).update();
    obs.get(i).show();
    obs.get(i).applyForce(speed);
    if (obs.get(i).pos.x<=0) {
      obs.remove(i);
    }
  }

  for (int i=birds.size()-1; i>=0; i--) {
    birds.get(i).update();
    birds.get(i).show();
    birds.get(i).applyForce(speed);
    if (birds.get(i).pos.x<=0) {
      birds.remove(i);
    }
  }

  if (trex.state!=3) {
    if (frameCount%10 == 9) {
      trex.score++;
    }
  }
  displayScore(trex.score);
}

void keyPressed() {
  if (key == ' ') {
    trex.jump();
  }
  if (key == CODED) {
    if (keyCode == DOWN) {
      trex.vel.add(fgravity);
      trex.state=2;
      if (trex.state!=1) {
        trex.state=2;
      }
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == DOWN) {
      trex.state=0;
    }
  }
}

double randomInt(double min, double max) {
  double x = (int)(Math.random()*((max-min)+1))+min;
  return x;
}
