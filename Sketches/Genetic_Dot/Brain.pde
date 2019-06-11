class Brain{
  int Gene_Size= 200;
  ArrayList<PVector> Genes;
   
  Brain(){
    Genes = new ArrayList<PVector>();
    for(int i=0;i<Gene_Size;i++){
      Genes.add(PVector.random2D());    
    } 
  }

}
