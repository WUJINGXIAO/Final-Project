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
  ellipse(450+m,370,100+random(0,20),50+random(0,20));
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

 }
