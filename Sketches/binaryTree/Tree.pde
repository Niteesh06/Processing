class Tree {
  Node root = null;
  Node current = null;
  Node temp = null;
  float tracex =400;
  float tracey =40;

  void addValue(int v) {
    if (this.root == null) {
      this.root = new Node(rootx, rooty, v);
      this.temp = this.root;
      this.current = this.root;
    } else {
      if (v<this.current.val) {
        if (this.current.left == null) {
          this.temp = new Node(this.current.pos.x-tracex, this.current.pos.y+tracey, v);
          strokeWeight(4);
          stroke(255);
          line(this.current.pos.x, this.current.pos.y, this.temp.pos.x, this.temp.pos.y);
          this.current.left =this.temp;
        } else {
          this.current = this.current.left;
          this.tracex-=(1*this.tracex)/2;
          this.tracey+=40;
          addValue(v);
        }
      } else {
        if (this.current.right == null) {
          this.temp= new Node(this.current.pos.x+tracex, this.current.pos.y+tracey, v);
          strokeWeight(4);
          stroke(255);
          line(this.current.pos.x, this.current.pos.y, this.temp.pos.x, this.temp.pos.y);
          this.current.right =this.temp;
        } else {
          this.current = this.current.right;
          this.tracex-=(1*this.tracex)/2;
          this.tracey+=40;
          addValue(v);
        }
      }
    }
    this.current =this.root;
    this.tracex =120;
    this.tracey=40;
    this.temp.show();
  }

  void traverse(Node n) {
    if (n != null) {
      if (n.left!=null) {
        traverse(n.left);
        print(n.val+" ");
      } else {
        print(n.val+" ");
        traverse(n.right);
      }
      if (n.right!=null) {
        traverse(n.right);
      }
    }
  }
}
