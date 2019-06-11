
Tree tree = new Tree();
float rootx; 
float rooty;

int[] arr ={60,30,90,95,80,35,20,10,25,32,40,85,65,92,97};
int[] arr1 = {44,12,67,36,92,75,41,29,63};
void setup() {
  size(800, 400);
  colorMode(HSB);
  rootx= width/2;
  rooty=100;
  background(127);
  textAlign(CENTER);
  textSize(50);
  text("BINARY SEARCH TREE",rootx,60);
  
  for(int i=0;i<arr.length;i++){
    tree.addValue(arr[i]);
  }
  tree.traverse(tree.root);
  println("Finished!!!");
}
