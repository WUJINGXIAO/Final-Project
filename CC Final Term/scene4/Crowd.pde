class Crowd{
  float p;
  float q;
  
Crowd(float p_, float q_){
  p=p_;
  q=q_;
  
}
// this part should use arrays to display pubic 
void appear(){
 //rectMode(CENTER);
 for (int i=0;i<900;i=i+100){
   for (int i_=0;i_<900;i_=i_+100){
 noStroke();
 fill(210, 160, 239,100);
 //rect(i,i_,20,60);
 noStroke();
 fill(158, 209, 226,100);
 ellipse(i+random(5),i_-10+random(5),p,q);
 fill(0);
 //float mx = constrain(mouseX, 10, 20);
  //float my = constrain(mouseY, 10, 20);
 ellipse(i+5+mouseX * 10/width , i_+5+mouseY * 10/width,10,10);
 ellipse(i-5+mouseX * 10/width, i_-5+mouseY * 10/width,10,10);
 
   }
 }
 
 
}
}
