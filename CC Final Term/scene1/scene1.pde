PImage photo;
float tears=0;
float full=800;
Depression Black;
Face Me;
void setup(){
  size(800,800);
  photo = loadImage("depression.jpg");
  background(144, 123, 123);
  Black = new Depression(500,500,200,200);
  Me = new Face(50,50);
}
void draw(){
  image(photo,0,0);
  println(mouseX,mouseY);
  Black.display(mouseX+random(0,15),mouseY+random(0,15));
  Me.eyes();
  Me.checks();
  Me.mouth(); 
  word();
 if(mousePressed) {
     fill(77,160,255);
     if(full<0){
     rect(0,0,800,full);
     full = full+1;
    }
   if(tears + 2 >= full){
      rect(0,full, 800, 800);
      full = full-1;
   }    
    tears = tears + 2;
    fill(77,160,255);
    rect(249,395, 15, 15 + tears,10);
    rect(453,418, 15, 15 +tears,10);
    } 
  }
void word(){ 
  String one = " I Had A Black Ball Names Depression... ";
  fill(227, 220, 220);
  textSize(42);
  text(one,100,100,500,500);
 }
 
