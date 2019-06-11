class Digit {
  PVector pos;
  int value;

  Digit(float x, float y, int v) {
    this.pos = new PVector(x, y); 
    this.value=v;
  }
  void show() {
    switch(this.value) {
    case 0:
      image(numbers.get(0), this.pos.x, this.pos.y);
      break;
    case 1:
      image(numbers.get(1), this.pos.x, this.pos.y);
      break;
    case 2:
      image(numbers.get(2), this.pos.x, this.pos.y);
      break;
    case 3:
      image(numbers.get(3), this.pos.x, this.pos.y);
      break;
    case 4:
      image(numbers.get(4), this.pos.x, this.pos.y);
      break;
    case 5:
      image(numbers.get(5), this.pos.x, this.pos.y);
      break;
    case 6:
      image(numbers.get(6), this.pos.x, this.pos.y);
      break;
    case 7:
      image(numbers.get(7), this.pos.x, this.pos.y);
      break;
    case 8:
      image(numbers.get(8), this.pos.x, this.pos.y);
      break;
    case 9:
      image(numbers.get(9), this.pos.x, this.pos.y);
      break;
    case 10:
      image(imgs.get(29), this.pos.x, this.pos.y);
      break;
    default:
    }
  }
}
