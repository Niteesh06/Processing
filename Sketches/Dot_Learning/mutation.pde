void mutation() {
  for (int i=0; i<pop.size(); i++) {
    for (int j=0; j<30; j++) {
      PVector t=PVector.random2D();
      pop.get(i).directions.get(j).add(t.mult(random(0.2,0.5)));
    }
  }
}
