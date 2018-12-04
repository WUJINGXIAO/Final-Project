// this scene should use vector to let black free dropping 
// use time to show crowd diappear constantly 

PImage photo5;
float n;
float m;
Depression Black;
//Depression Black2;
Face Me;
Crowd people;


void setup(){
  size(800,800);
  background(144, 123, 123);
  
  Black = new Depression(500,500,200,200);
  //Black2 = new Depression(mouseX,mouseY,200,200);
  Me = new Face(50,20+random(0,20));
  people = new Crowd(70,70);
   photo5 = loadImage("people.jpg");
  
  
  
}

void draw(){
  background(144, 123, 123);
  image(photo5,0,0);
  println(mouseX,mouseY);
  //people.appear();
 // Black2.display(mouseX,mouseY);
  Me.eyes();
  Me.checks();
  // why once I uncomment my mouth the sentence would disappear?Cre
  Me.mouth(); 
 word();
 Black.display(78+n,385);
 n=n+1;
 m=m+1;
 

  
 
}
// scene#1 title
void word(){ 
  String six = " At social situations, it would sniff out what confidence I had and chase it away... ";
  fill(0);
  textSize(42);
  text(six,100,100,500,500);
 }
 
