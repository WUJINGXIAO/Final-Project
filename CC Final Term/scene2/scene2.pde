// import processing.sound.*;
// SoundFile soundfile;

PImage photo2;
Face Me;
Depression Black;


void setup(){
  // soundfile = new SoundFile(this,"name.aiff");
  size(800,800);
  background(144, 123, 123);
  Me = new Face(50,50);
  Black = new Depression(500,500,200,200);
   photo2= loadImage("depression2.jpg");
  image(photo2,0,0);
  
 // soundfile.loop();
}

void draw(){
 // dots pop up yet I am afraid of showing them, so my depression 
 // keeps erasing them
 // move mouse to erase my struggles 
 // dots should be images 
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
    fill(48, 0, 10);
  } else if (r < 0.50) {
    fill(72, 87, 0,128);
  } else if (r < .75) {
    fill(13, 45, 0);
  } else {
    fill(1, 20, 34);
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
