class Genome{
 ArrayList <ConnectionGene> genes;
 ArrayList <Node> nodes;
 int nextNode;
 int noInputs;
 int layers=2;
 int noOutputs;
 int biasNode;
 
 ArrayList<Node> network = new ArrayList<Node>();//a list of the nodes in the order that they need to be considered in the NN
 Genome(int in,int out){
   noInputs = in;
   noOutputs = out;
   nextNode = 0;
   //inputs
   for(int i=0;i<noInputs;i++){
     nodes.add(new Node(nextNode,0));
     nextNode++;
   }
   //outputs
   for(int i=0;i<noOutputs;i++){
     nodes.add(new Node(nextNode+i,1));
     nextNode++;
   }
   //bias
   biasNode = nextNode;
   nodes.add(new Node(nextNode,0));
   nextNode++;
 }
 
 float[] feedForward(float[] d){
   
   for(int i=0;i<noInputs;i++){
     nodes.get(i).outputSum=d[i];
   }
   nodes.get(noInputs).outputSum=0;
   
   for (int i = 0; i< network.size(); i++) {//for each node in the network engage it(see node class for what this does)
      network.get(i).engage();
    }
   
   //the outputs are nodes[inputs] to nodes [inputs+outputs-1]
    float[] outs = new float[noOutputs];
    for (int i = 0; i < noOutputs; i++) {
      outs[i] = nodes.get(noInputs + i).outputSum;
    }

    for (int i = 0; i < nodes.size(); i++) {//reset all the nodes for the next feed forward
      nodes.get(i).inputSum = 0;
    }

    return outs;
 }
 
 void generateNetwork() {
    connectNodes();
    //for each layer add the node in that layer, since layers cannot connect to themselves there is no need to order the nodes within a layer

    for (int l = 0; l< layers; l++) {//for each layer
      for (int i = 0; i< nodes.size(); i++) {//for each node
        if (nodes.get(i).layer == l) {//if that node is in that layer
          network.add(nodes.get(i));
        }
      }
    }
  }
  
  void connectNodes() {

    for (int i = 0; i< nodes.size(); i++) {//clear the connections
      nodes.get(i).connectedGenes.clear();
    }

    for (int i = 0; i < genes.size(); i++) {//for each connectionGene 
      genes.get(i).fromNode.connectedGenes.add(genes.get(i));//add it to node
    }
  }
  
  //returns the node with a matching number
  //sometimes the nodes will not be in order
  Node getNode(int nodeNumber) {
    for (int i = 0; i < nodes.size(); i++) {
      if (nodes.get(i).number == nodeNumber) {
        return nodes.get(i);
      }
    }
    return null;
  }

 
  
  
  
  
  
  
  
  
  
  
}
