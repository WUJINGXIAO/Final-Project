PImage s;
Depression mover;
Depression mover2;
Face Me;

/*PVector position;
PVector velocity;
float r = 6;
float speed = 3.5;
PVector base1;
PVector base2
*/;


void setup(){
  size(800,800);
  background(144, 123, 123);
   s = loadImage("shining .jpg");
  //Black = new Depression(500,500,200,200);
  //Black2 = new Depression(mouseX,mouseY,200,200);
  Me = new Face(50,50);
  mover = new Depression();
  mover2 = new Depression();
  

}
  
  
  


void draw(){
  
  background(144, 123, 123);
  image(s,0,0);
  println(mouseX,mouseY);
  
  //Black.display(360,620);
 // Black2.display(mouseX,mouseY);
  Me.eyes();
  Me.checks();
  Me.mouth(); 
  word();
  
  mover.update();
  mover.display(254, 213, 225);
  
  star(mouseX,mouseY);
  
 
 
  
}
 void star(float x, float y){
   fill(random(240,255), random(220,238), random(145,151));
  noStroke();//no color outline
  beginShape();//start shape drawing
  vertex(x, y-50);
  vertex(x+14, y-20);
  vertex(x+47, y-15);
  vertex(x+23, y+7);
  vertex(x+29, y+40);
  vertex(x, y+25);
  vertex(x-29, y+40);
  vertex(x-23, y+7);
  vertex(x-47, y-15);
  vertex(x-14, y-20);
  endShape(CLOSE);
 }


void word(){ 
  String great= "Black Ball may always be my life but never be the beast!"; 
  fill(253, 189, 194);
  textSize(42);
  text(great,100,100,500,500);
}

// there should be an endinf part 
// press space key or something to show ending 
