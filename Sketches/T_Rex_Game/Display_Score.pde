
void displayScore(int s){
  while(s!=0){
    score.add(new Digit(disposx,disposy,s%10));
    s/=10;
    disposx-= 11;
  }
  disposx-= 22;
  score.add(new Digit(disposx,disposy,10));
  
  for(int i=score.size()-1;i>=0;i--){
    score.get(i).show();
    score.remove(i);
  }
  
  disposx=width-100;
  disposy=height-200;
}
