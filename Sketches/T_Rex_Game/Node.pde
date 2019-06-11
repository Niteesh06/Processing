class Node{
 int number;
 int layer;
 float inputSum;
 float outputSum;
 ArrayList<ConnectionGene> connectedGenes;
 
 Node(int n,int l){
   connectedGenes = new ArrayList<ConnectionGene>();
   number = n;
   layer =l;
 }
 void engage() {
    if (this.layer!=0) {//no sigmoid for the inputs and bias
      outputSum = sigmoid(inputSum);
    }

    for (int i = 0; i< connectedGenes.size(); i++) {//for each connection
      if (connectedGenes.get(i).enabled) {//dont do shit if not enabled
        connectedGenes.get(i).toNode.inputSum += connectedGenes.get(i).weight * outputSum;//add the weighted output to the sum of the inputs of whatever node this node is connected to
      }
    }
 }
 //sigmoid activation function
  float sigmoid(float x) {
    float y = 1 / (1 + pow((float)Math.E, -4.9*x));
    return y;
  }
  
  
  
  
  
  
}
