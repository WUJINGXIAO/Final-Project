class Depression{
  float x;
  float y;
  float xLoc;
  float yLoc;
  
Depression(float x_, float y_, float xLoc_,float yLoc_){
   x=x_;
   y=y_;
  xLoc= xLoc_;
  yLoc= yLoc_;
  
}

void display(float changeX, float changeY){
  noStroke();
  fill(63, 57, 57);
  ellipse(changeX,changeY,xLoc,yLoc);
}

}
