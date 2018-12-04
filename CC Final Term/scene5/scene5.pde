Colorful[] p;
int n = 0;
PImage img;


Depression Black;
Face Me;


void setup(){
  size(800,800);
  background(144, 123, 123);
  
  Black = new Depression(500,500,200,200);
  //Black2 = new Depression(mouseX,mouseY,200,200);
  Me = new Face(50,50);
  
  p = new Colorful[200]; 
  for (int i=1; i<=n; i++)
    p[i] = new Colorful(width/2, height/2, random(TWO_PI));
  
  
}

void draw(){
  background(144, 123, 123);
  println(mouseX,mouseY);
  Black.display(mouseX+random(0,15),mouseY+random(0,15));
 // Black2.display(mouseX,mouseY);
  Me.eyes();
  Me.checks();
  Me.mouth(10); 
  word();
  
  // colorful particles 
  
  if (n == 200 - 1) 
  {
    n = 0; 
    p = new Colorful[200];
  }
  for (int i=1; i<=n; i++)
  {
    p[i].update();
    p[i].show();
  }

  
 
}

 void mouseDragged(){
  if (n < 200 - 1) n++;
  p[n] = new Colorful(mouseX, mouseY, random(360));
  Me.mouth(60);
}
 

void word(){ 
  String negative = " Black Ball would make me think and say negative things... ";
  String positive = " I want to say something colorful...But Black Ball makes them black"; 
  fill(227, 220, 220);
  textSize(32);
  text(negative,100,100,500,500);
  fill(223, 131, 168);
  textSize(22);
  text(positive,100,200,500,500);
 }
