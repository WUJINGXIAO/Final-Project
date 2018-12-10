class Depression2{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float max;
  
Depression2() {
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    max = 5;
  }
void update() {
    PVector mouse = new PVector(mouseX,mouseY);
    PVector acceleration = PVector.sub(mouse,location);
    acceleration.setMag(0.2);
    velocity.add(acceleration);
    velocity.limit(max);
   location.add(velocity);
}

 void display(color c1, color c, color c2) {
  noStroke();
  fill(c1, c, c2); 
  ellipse(location.x,location.y,200,200);
  fill(250, 144, 152);
  ellipse(location.x-65,location.y-10,50,20);
  ellipse(location.x+65,location.y-10,50,20);
  fill(91, 78, 79);
  ellipse(location.x-45,location.y-45,20,20);
  ellipse(location.x+45,location.y-45,20,20);
  
  }



  
  
  
}
