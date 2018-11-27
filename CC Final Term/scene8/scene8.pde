Depression Super;
Depression Big;
//Depression Medium;
Depression Small;
//Depression Black2;
//Face Me;


void setup(){
  size(800,800);
  background(144, 123, 123);
  
  Super = new Depression(500,500,180+random(0,15),180+random(0,15));
  Big = new Depression(500,500,150+random(0,15),150+random(0,15));
  //Medium = new Depression(500,500,100,100);
  Small = new Depression(500,500,50+random(0,15),50+random(0,15));
  //Black2 = new Depression(mouseX,mouseY,200,200);
  //Me = new Face(50,50);
  
  
}

void draw(){
  background(144, 123, 123);
  println(mouseX,mouseY);
  Super.display(158,301+random(0,15));
  Big.display(154,491+random(0,10));
  Small.display(153,653+random(0,5));
 // Black2.display(mouseX,mouseY);
 // Me.eyes();
  //Me.checks();
  // why once I uncomment my mouth the sentence would disappear?Cre
  //Me.mouth(); 
  word();

if (mouseX<248&&mouseX>69&&mouseY<400&&mouseY>200){
 fill(255,0,0);
 textSize(42);
 text("poor", 450, 300);  
}else if(mouseX<238&&mouseX>69&&mouseY<574&&mouseY>410){
 fill(255, 122, 20);
 textSize(42);
 text("Bad", 450, 490);  
}else if (mouseX<238&&mouseX>69&&mouseY<684&&mouseY>630){
   fill(244, 254, 89);
 textSize(42);
 text("Good!", 450, 660); 
  
}
  

  
 
}
// scene#1 title
void word(){ 
  String eleven = "Keep a mood journal, getting things on paper";
  fill(227, 220, 220);
  textSize(35);
  text(eleven,100,100,500,500);
 }
 
 
