class Player {
  float fitness;
  Genome brain;
  int noInputs =5;
  int noOutputs =2;
  boolean alive = true;

  float[] vision = new float[noInputs];
  float[] decision = new float[noOutputs];

  Player() {
    brain = new Genome(noInputs, noOutputs);
  }

  //what the player see's
  void look() {
    vision[0]=g.get(0).vel.x;
    if(obs.get(0)!=null){
      vision[1]=obs.get(0).vel.x;
    }else{
      vision[1]=100;
    }
    if(birds.get(0)!=null){
      vision[2]=birds.get(0).vel.x;
    }else{
      vision[2]=100;
    }
    if(obs.get(0)!=null){
      vision[3]=imgs.get(obs.get(0).i).width;
    }else{
      vision[3]=0;
    }
    if(birds.get(0)!=null){
      vision[4]=birds.get(0).pos.y;
    }else{
      vision[4]=-1;
    }
  }
}

void think(){
 // decision = brain.feedForward();
  
  
  
  
  
}
