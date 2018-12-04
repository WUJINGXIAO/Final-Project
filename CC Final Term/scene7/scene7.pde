// there should be more tricks in KeyCODED parts


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
  
  
  
}

void draw(){
  
  background(144, 123, 123);
  println(mouseX,mouseY);
  
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
    mover.update();
    mover.display(255,238,239);
    
    } 
    if(key=='2'){
      background(169, 211, 223);  
      mover2.update();
      mover2.display(132, 131, 120);
    }    
    if(key=='3'){
      background(255, 214, 217);  
      mover.update();
      mover.display(132, 231, 220);
      
      
    }    
  }

}
void word(){ 
  String tricks= "I learned not to be afraid of it and taught him a few new tricks of my own"; 
  fill(253, 189, 194);
  textSize(32);
  text(tricks,100,100,500,500);
}
