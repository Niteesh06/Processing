 PVector goal  = new PVector(400, 20);
 Population test = new Population(5000);
 void setup(){
  size(800,600);
  textSize(25);
 }

 void draw(){
   background(51);
   test.update();
   test.show();
   fill(255,128,0);
   ellipse(goal.x,goal.y,16,16);
 }
