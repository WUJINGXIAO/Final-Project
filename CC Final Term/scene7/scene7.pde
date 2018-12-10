PImage p1;
PImage p2;
PImage p3;
PImage p0;

Depression mover;
Depression mover2;
Face Me;


void setup(){
  size(800,800);
  background(144, 123, 123);
  
  //Black = new Depression(500,500,200,200);
  //Black2 = new Depression(mouseX,mouseY,200,200);
  Me = new Face(50,50);
  mover = new Depression();
  mover2 = new Depression();
  
  p0 = loadImage("pinky.jpg");
  p1 = loadImage("same.jpg");
  p2 = loadImage("blue.jpg");
  p3 = loadImage("red.jpg");
  
  
}

void draw(){
  
  background(144, 123, 123);
  println(mouseX,mouseY);
  image(p0,-600,-50);
  //Black.display(360,620);
 // Black2.display(mouseX,mouseY);
  Me.eyes();
  Me.checks();
  Me.mouth(); 
  word();
  
  mover.update();
  mover.display(254, 213, 225);
  
  // tricks
  // there should be more stuffs in the background
  if (keyPressed){
    if(key=='1'){
    background(188, 241, 180);
    image(p1,-40,-40);
    mover.update();
    mover.display(255,238,239);
    
    } 
    if(key=='2'){
      background(169, 211, 223);  
      image(p2,-260,-70);
      mover2.update();
      mover2.display(132, 131, 120);
      
    }    
    if(key=='3'){
      background(255, 214, 217); 
      image(p3,-150,-140); 
      mover.update();
      mover.display(132, 231, 220);
      
      
      
    }    
  }

}
void word(){ 
  String tricks= "I learned not to be afraid of it and taught him a few new tricks of my own"; 
  fill(201, 151, 171);
  textSize(32);
  text(tricks,100,100,500,500);
}
