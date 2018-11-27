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
 for (int i=0;i<800;i=i+100){
   for (int i_=0;i_<800;i_=i_+100){
 noStroke();
 fill(210, 160, 239,100);
 rect(i,i_,20,60);
 noStroke();
 fill(100, 60, 124,100);
 ellipse(i,i_-10,p,q);
   }
 }
 
 
}
}
