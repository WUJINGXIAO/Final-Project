Depression Black;
Depression cover1;
Depression cover2;
//Depression Black2;
Face Me;


void setup(){
  size(800,800);
  background(144, 123, 123);
  
  //Black = new Depression(500,500,200,200);
  cover1 = new Depression(500,500,100,100);
  cover2 = new Depression(500,500,200,200);
  //Black2 = new Depression(mouseX,mouseY,200,200);
  Me = new Face(50,50);
  
  
}

void draw(){
  background(144, 123, 123);
  println(mouseX,mouseY);
  //Black.display(mouseX,mouseY,200);
 // Black2.display(mouseX,mouseY);
  Me.eyes();
  Me.checks();
  Me.tears();
  
  Me.mouth(); 
  for (int w=0;w<800;w=w+70){
    for (int h=0; h<800; h=h+70){
  drawStar(w,h,10);
    }
  }
  word();
  //cover1.display(247,370,130);
  //cover2.display(450,370,130);
  

  
 
}
// scene#3
void word(){ 
  String four = " When the rest of world seem to be enjoying life ";
  String five = " I could only see it through BLACK BALL...";
  fill(255);
  textSize(35);
  text(four,100,100,500,500);
  textSize(35);
   text(five,100,200,500,500);
 }
 
 

void drawStar(float x, float y, float size) {
  fill(200+random(0,30),100+random(0,90),0);
  stroke(255, 255, 0);
  float orientation=random(TWO_PI);
  beginShape();
  for (int a=0; a<5; a++) {
    vertex(x+cos(orientation)*size, y+sin(orientation)*size);
    orientation+=TWO_PI/5*2;
  }
  endShape(CLOSE);
}

 
void mouseDragged(){
  background(120);
  for(int i=0;i<20;i+=1){
    fill(0);
    
    ellipse(mouseX +random(800)-200,mouseY+random(800)-200,8,8);
      }
   Me.eyes();
   Me.checks();
  Me.tears();
  Me.mouth();
  cover1.display(247,370,255);
  cover2.display(450,370,255);
}
