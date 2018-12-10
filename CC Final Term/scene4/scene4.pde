PImage photo5;
PImage brave;
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
  brave = loadImage("confidence.jpg");
  
  
  
}

void draw(){
  background(144, 123, 123);
  image(photo5,0,0);
  println(mouseX,mouseY);
  //people.appear();
 // Black2.display(mouseX,mouseY);
  Me.eyes();
  Me.checks();
  Me.mouth(); 
  //word();
 Black.display(78+n,385);
 n=n+1;
 m=m+1;
 if (mousePressed){
   background(0);
   image(brave,0,0);
   word();
   
   
 }
}

void word(){ 
  String six = " At social situations, it would sniff out what confidence I had and chase it away... ";
  String greeting = " Confidence ??? ";
  fill(0);
  textSize(42);
  text(six,100,400,500,500);
  text(greeting,100+n,700,500,500);
 }
