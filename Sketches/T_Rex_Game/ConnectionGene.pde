class ConnectionGene{
  Node fromNode;
  Node toNode;
  float weight;
  int innovationNumber;
  boolean enabled;
  
  ConnectionGene(Node from,Node to,float w,int innov){
    fromNode= from;
    toNode= to;
    weight= w;
    innovationNumber = innov;
  }
  
  
  
}
