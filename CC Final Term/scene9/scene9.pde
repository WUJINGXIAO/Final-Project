PVector location;  
PVector velocity;  
PVector gravity;  
float embrace;


//Depression Black;
//Depression Black2;
Face Me;


void setup(){
  size(800,800);
  background(144, 123, 123);
  
  //Black = new Depression(500,500,200,200);
  //Black2 = new Depression(mouseX,mouseY,200,200);
  Me = new Face(50,50);
  
  location = new PVector(100,100);
  velocity = new PVector(1.5,2.1);
  gravity = new PVector(0,0.2);

  
  
  
}

void draw(){
  
  background(144, 123, 123);
  println(mouseX,mouseY);
  noStroke();
  fill(255, 238, 239); 
  ellipse(location.x,location.y,200+embrace,200+embrace);
  fill(250, 144, 152);
  ellipse(location.x-65,location.y-10,50,20);
  ellipse(location.x+65,location.y-10,50,20);
  fill(91, 78, 79);
  ellipse(location.x-45,location.y-45,20,20);
  ellipse(location.x+45,location.y-45,20,20);
   if (mousePressed){
   embrace=embrace+10;
  }
  
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
 // noStroke();
  //fill(63, 57, 57);
  //ellipse(location.x,location.y,200,200);
 // black becomes cute ball 
  //if (mousePressed==true){
 // background(0);
  
  if (mousePressed==true){// from one of my past work ( shining stars)
  fill(255, 226, 83);
  stroke(255);
  ellipse(72,153,50+random(50),50+random(100));
  ellipse(230,700,50+random(50),50+random(100));
  ellipse(660,170,50+random(50),50+random(100));// three shaking big stars 
  fill(random(0,255),random(0,255),random(90));
  ellipse(random(0,800),random(0,800),20,20); // little colorful ball 
  
  }
  
  
    
  }
//}

void word(){ 
  String embrace = " I learnt it is better to embrace my 'black ball'!";

  fill(12, 111, 193);
  textSize(32);
  text(embrace,100,100,500,500);
  
 }
 
