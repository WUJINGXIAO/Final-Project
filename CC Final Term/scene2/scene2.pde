Face Me;
Depression Black;


void setup(){
  size(800,800);
  background(144, 123, 123);
  Me = new Face(50,50);
  Black = new Depression(500,500,200,200);
  
  
}

void draw(){
 // dots pop up yet I am afraid of showing them, so my depression 
 // keeps erasing them
 // move mouse to erase my struggles 
 
  word();
  Me.eyes();
  Me.checks();
  Me.mouth();
  Black.display(mouseX,mouseY);
  
  float x = random(width);
  float  y = random(height);
  float s = random(20, 40);
  float r = random(0,10);
  if (r < 0.25) {
    fill(207, 227, 111,128);
  } else if (r < 0.50) {
    fill(72, 87, 0,128);
  } else if (r < .75) {
    fill(34, 41, 0,128);
  } else {
    fill(171, 97, 135,128);
  }
 
  ellipse(x, y, s, s);
  
  
  
}
// scene#2
void word(){ 
  String two = " I am a person with depression.. ";
  String three = " I am afraid of talking about my struggles...";
  fill(227, 220, 220);
  textSize(30);
  text(two,100,100,500,500);
  textSize(30);
  text(three,100,200,500,500);
  
}
