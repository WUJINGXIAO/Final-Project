PImage photo7;
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
  photo7 = loadImage("pink.jpg");
  
  
}

void draw(){
  background(144, 123, 123);
  image(photo7,0,0);
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
  fill(0);
  ellipse(location.x,location.y,200,200);
  
 // black becomes cute ball 
  if (mousePressed==true){
  
  background(0);
  noStroke();
  fill(241, 190, 210); 
  ellipse(location.x,location.y,200,200);
  fill(250, 144, 152);
  ellipse(location.x-65,location.y-10,50,20);
  ellipse(location.x+65,location.y-10,50,20);
  
  fill(91, 78, 79);
  ellipse(location.x-45,location.y-45,20,20);
  ellipse(location.x+45,location.y-45,20,20);
  // shining pink stars in background
  fill(247, 178, 193);
  star(random(width),random(height),random(5,20));
  star(random(width),random(height),random(5,20));
  star(random(width),random(height),random(5,20));
   }
}

void word(){ 
  String thanks = "Thankfully I sought professional help.";
  String thanks2 = "This was my turning point in my life...";
  fill(0);
  textSize(36);
  text(thanks,100,50,500,500);
  textSize(35);
  text(thanks2,100,170,500,500);
 }
 
void star(float x, float y, float r) {

  pushStyle();
  noStroke();
  float x1 = x;
  float y1 = y-r;
  float x3 =x- cos(PI/6)*r;
  float y3 =y + sin(PI/6)*r;
  float x2 = x + cos(PI/6)*r;
  float y2 = y + sin(PI/6)*r;
  float x4 =x - cos(PI/6)*r;
  float y4 =y - sin(PI/6)*r;
  float x5 =x + cos(PI/6) * r;
  float y5 =y - sin(PI/6) * r;
  float x6 = x ;
  float y6 = y + r;
 triangle(x1, y1, x2, y2, x3, y3);
 triangle(x4, y4, x5, y5, x6, y6);
  popStyle();
}
 
