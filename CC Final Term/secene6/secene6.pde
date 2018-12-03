PVector location;  
PVector velocity;  
PVector gravity;  


Depression Black;
//Depression Black2;
Face Me;


void setup(){
  size(800,800);
  background(144, 123, 123);
  
  Black = new Depression(500,500,200,200);
  //Black2 = new Depression(mouseX,mouseY,200,200);
  Me = new Face(50,50);
  
  location = new PVector(100,100);
  velocity = new PVector(1.5,2.1);
  gravity = new PVector(0,0.2);

  
  
  
}

void draw(){
  
  background(144, 123, 123);
  println(mouseX,mouseY);
  
  //Black.display(360,620);
 // Black2.display(mouseX,mouseY);
  Me.eyes();
  Me.checks();
  Me.mouth(); 
  word();
 // black ball 
 location.add(velocity);
  velocity.add(gravity);
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }if (location.y > height) {
   velocity.y = velocity.y * -0.95; 
   location.y = height;
  }
  noStroke();
  fill(63, 57, 57);
  ellipse(location.x,location.y,200,200);
 // black becomes cute ball 
  if (mousePressed==true){
  background(0);
  noStroke();
  fill(255, 238, 239); 
  ellipse(location.x,location.y,200,200);
  fill(250, 144, 152);
  ellipse(location.x-65,location.y-10,50,20);
  ellipse(location.x+65,location.y-10,50,20);
  fill(91, 78, 79);
  ellipse(location.x-45,location.y-45,20,20);
  ellipse(location.x+45,location.y-45,20,20);
  
  
  
    
  }
}

void word(){ 
  String thanks = "Thankfully I sought professional help.";
  String thanks2 = "This was my turning point in my life...";
  fill(227, 220, 220);
  textSize(32);
  text(thanks,100,100,500,500);
  textSize(30);
  text(thanks2,100,200,500,500);
 }
 
