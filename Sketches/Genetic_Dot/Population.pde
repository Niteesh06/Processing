class Population {
  ArrayList<dot> dots = new ArrayList<dot>();
  ArrayList<dot> nextGen =  new ArrayList<dot>();
  int popsize;
  boolean dead;
  int Generation=1;
  float fitnessSum;
  float mutationRate = 0.75;
  int minsteps;
  boolean goalReached=false;

  Population(int size) {
    for (int i=0; i<size; i++) {
      dots.add(new dot());
    }
    popsize=size;
    minsteps=9999;
  }

  void update() {
    println(goalReached);
    if (!dead && !goalReached) {
      for (int i=0; i<popsize; i++) {
        if (!goalReached) {
          dots.get(i).update();
        }
      }
      for (dot d : dots) {
        if (!d.dead && !d.goalReached) {
          dead = false;
          break;
        } else {
          dead = true;
        }
      }
    } else {
      for (dot d : dots) {
        if (d.goalReached) {
          goalReached= true;
          dead=true;
          break;
        }
      }
      Generation++;
      dead = false;
      goalReached= false;
      fitnessSum=0;
      Selection();
      Mutation();
      for (dot d : dots) {
        if (d.minsteps!=9999) {
          if (d.minsteps<minsteps) {
            minsteps=d.minsteps;
          }
        }
        d.fitness=0;
      }
      if (minsteps==9999) {
        minsteps=dots.get(1).direction.Genes.size();
      }
    }
  }

  void show() {
    for (int i=0; i<popsize; i++) {
      dots.get(i).show();
    }
    fill(255);
    text("Gen No : "+Generation, 25, 25, 20);
  }

  void Mutation() {

    for (dot d : dots) {
      if (random(1)<mutationRate) {
        for (int i=0; i<minsteps; i++) {
          d.direction.Genes.set(1, new PVector(random(1), random(1)));
        }
      }
    }
  }

  void Selection() {
    fitnessSum=0;
    nextGen.clear();
    for (dot d : dots) {
      fitnessSum+=d.fitness;
    }
    for (int i=0; i<dots.size(); i++) {
      dot parent = selectParent();
      dot baby = gimmebaby(parent);
      nextGen.add(baby);
    }
    dots.clear();
    for (int i=0; i<nextGen.size(); i++) {
      dots.add(nextGen.get(i));
    }
  }

  dot gimmebaby(dot parent) {
    dot offspring = new dot();
    offspring.direction.Genes.clear();
    for (int i=0; i<parent.direction.Genes.size(); i++) {
      offspring.direction.Genes.add(parent.direction.Genes.get(i));
    }
    return offspring;
  }

  dot selectParent() {
    float runningSum = 0;
    float rand = random(fitnessSum);
    for (int i=0; i<dots.size(); i++) {
      runningSum+=dots.get(i).fitness;

      if (runningSum>rand) {
        return dots.get(i);
      }
    }
    return null;
  }
}
