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
  ellipse(250,370,a,b);
  //float mx= constrain(mouseX,100,200);
  //float my= constrain(mouseY,10,20);
  ellipse(450,370,random(90,100),random(70,80));
 }
void checks(){
  noStroke();
  fill(243, 103, 88);
  ellipse(190,450,100,40);
  ellipse(520,450,100,40);
  }
  
void mouth(){
  noStroke();
  fill(212);
  rect(250,480,200,10);
  
}
 }
