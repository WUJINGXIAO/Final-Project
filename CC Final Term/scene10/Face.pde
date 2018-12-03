class Face{
  float a;
  float b;
  
 
  
Face(float a_, float b_){
  a=a_;
  b=b_;
  
  
}

void eyes(){
  noStroke();
  fill(9, 8, 50);
  ellipse(200 + mouseX * 0.1,300 + mouseY * 0.1,a,b);
  ellipse(500 + mouseX * 0.1,300 + mouseY * 0.1,100,100);
 }
void checks(){
  noStroke();
  fill(243, 103, 88);
  ellipse(190,450,100,40);
  ellipse(520,450,100,40);
  }
  
void mouth(){
  noStroke();
  fill(255);
 arc(350,400,200,200,PI/5,PI-PI/5,OPEN);
 stroke(0);
 line(307,458,307,493);
 line(346,458, 346,499);
  line(381,458, 381,494);
  
}
 }
