Depression Black;
//Depression Black2;
Face Me;


void setup(){
  size(800,800);
  background(144, 123, 123);
  
  Black = new Depression(500,500,200,200);
  //Black2 = new Depression(mouseX,mouseY,200,200);
  Me = new Face(50,50);
  
  
}

void draw(){
  background(144, 123, 123);
  println(mouseX,mouseY);
  Black.display(mouseX+random(0,15),mouseY+random(0,15));
 // Black2.display(mouseX,mouseY);
  Me.eyes();
  Me.checks();
  // why once I uncomment my mouth the sentence would disappear?Cre
  //Me.mouth(); 
  word();

  
 
}
// scene#1 title
void word(){ 
  String one = " I Had A Black Ball Names Depression... ";
  fill(227, 220, 220);
  textSize(42);
  text(one,100,100,500,500);
 }
 
