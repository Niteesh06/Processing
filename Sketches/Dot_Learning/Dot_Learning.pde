float DOT_ACC=0.02;
float GENE_SIZE=30;
ArrayList<Dot> pop;
int Generation=1;
boolean genend=false;
void setup() {
  size(800, 600);
  pop= new ArrayList<Dot>();

  for (int i=0; i<100; i++) {
    pop.add(new Dot());
  }
}

void draw() {
  background(0);
  fill(0, 255, 0);
  noStroke();
  ellipse(width/2, 20, 4, 4);
  if (!genend)
    for (Dot d : pop) {
      d.update();
      d.show();
      d.fitness();
    } else {
    Generation++;
    naturalSelection();
    mutation();
    genend = false;
  }

  text(Generation, 20, 50, 10);
}
