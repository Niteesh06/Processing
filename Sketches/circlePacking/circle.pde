
class circle {

  float x;
  float y;
  float radius = 0;
  float colors = random(360);
  boolean growing =true;
  
  circle(float x_,float y_){
    this.x=x_;
    this.y=y_;
  }

  void display() {
    //noStroke();
    strokeWeight(4);
    stroke(colors,255,255);
    //fill(colors, 255, 255);
    noFill();
    ellipse(this.x, this.y, 2*radius, 2*radius);
  }
  void grow() {
    if (growing) {
      radius+=0.5;
    }
  }
  boolean edges() {
    return (x+radius+4>width || x-radius-4<0 || y+radius+4>height || y-radius-4<0);
  }
}
