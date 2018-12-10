class Face{
  float a;
  float b;
  Face(float a_, float b_){
  a=a_;
  b=b_;
  }
void eyes(){
  noStroke();
  fill(249, 245, 245);
  ellipse(250+m,370,a,b);
  ellipse(450+m,370,100,100);
 }
void checks(){
  noStroke();
  fill(243, 103, 88);
  ellipse(190+m,450,100,40);
  ellipse(520+m,450,100,40);
  }
  void mouth(){
  noStroke();
  fill(212);
  rect(250+m,480,200,10);
  }
  void tears (){
  noStroke();
  fill(155, 235, 235);
  ellipse(230,390,25,10);
  ellipse(474,416,45,15);
  }
  
 }
