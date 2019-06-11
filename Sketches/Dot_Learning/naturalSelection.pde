void naturalSelection() {
  float min=99999999;
  int minIndex=-1;
  for (int i=0; i<pop.size(); i++) {

    if (pop.get(i).fitness<min) {
      min= pop.get(i).fitness;
      minIndex=i;
    }
  }

  Dot best = pop.get(minIndex);
  for(int i=0;i<pop.size();i++){
    pop.remove(pop.get(i));
  }
  for(int i=0;i<100;i++){
    pop.add(best);
  }
}
