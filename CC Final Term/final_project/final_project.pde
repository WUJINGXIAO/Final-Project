//import processing.sound.*;
//SoundFile file;
int count = 0; // important ! Used to switching different scenes..
//scene1
PImage photo;
float tears=0;
float full=800;
Depression Black;
Face Me;
//scene2
PImage photo2;
// scene3
PImage photo3;
PImage photo4;
Depression cover1;
Depression cover2;
//scene 4
PImage photo5;
PImage brave;
float n;
float m;
//scene 5
Colorful[] p;
int n1 = 0;
PImage photo6;
//scene 6
PImage photo7;
PVector location;  
PVector velocity;  
PVector gravity;  
// scene 7
PImage p1;
PImage p2;
PImage p3;
PImage p0;
//float max;
Depression2 mover;
Depression2 mover2;
// scene 8
PImage define;
PImage mood;
PImage mood2;
Depression Super;
Depression Big;
Depression Small;
// scene 9
PImage r;
PVector location2;  
PVector velocity2;  
PVector gravity2;  
float embrace;
// scene 10
PImage s;

void setup(){
  //file = new SoundFile(this,"music.mp3");
  //file.play();
  size(800,800);
  println(mouseX,mouseY); 
  // 1
  photo = loadImage("depression.jpg");
  // 2
  photo2= loadImage("depression2.jpg");
  // 3
  photo3 = loadImage("colorfulcrowd.jpg");
  photo4 = loadImage("blackcrowd.jpg");
  cover1 = new Depression(500,500,100,100);
  cover2 = new Depression(500,500,200,200);
  // 4
  photo5 = loadImage("people.jpg");
  brave = loadImage("confidence.jpg");
  // 5
  p = new Colorful[200]; 
  for (int i=1; i<=n1; i++)
    p[i] = new Colorful(width/2, height/2, random(TWO_PI));
  photo6 = loadImage("black.jpg");
  // 6
  location = new PVector(100,100);
  velocity = new PVector(1.5,2.1);
  gravity = new PVector(0,0.2);
  photo7 = loadImage("pink.jpg");
  // 7
  mover = new Depression2();
  mover2 = new Depression2();
  p0 = loadImage("pinky.jpg");
  p1 = loadImage("same.jpg");
  p2 = loadImage("blue.jpg");
  p3 = loadImage("red.jpg");
  // 8
  define = loadImage("journal.jpg");
  mood = loadImage("smile.png");
  mood2 = loadImage("bad.png");
  Super = new Depression(500,500,180+random(0,15),180+random(0,15));
  Big = new Depression(500,500,150+random(0,15),150+random(0,15));
  Small = new Depression(500,500,50+random(0,15),50+random(0,15));
  // 9
  r = loadImage("rainbow1.jpg");
   location2 = new PVector(100,100);
  velocity2 = new PVector(1.5,2.1);
  gravity2 = new PVector(0,0.2);
  // 10
   s = loadImage("shining .jpg");
  // general 
 Black = new Depression(500,500,200,200);
  Me = new Face(50,50);
}
void draw(){
  image(photo,0,0);
  //println(mouseX,mouseY);
  Black.display(mouseX+random(0,15),mouseY+random(0,15));
  Me.eyes();
  Me.checks();
  Me.mouth(); 
  word1();
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
// important !! Different scenes!!!!!    
 if(count ==1){
  // photo2= loadImage("depression2.jpg");
  image(photo2,0,0);
  word2();
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
if(count ==2){
  word3();
  image(photo3,0,0);
  println(mouseX,mouseY);
  Me.eyes();
  Me.checks();
  Me.tears();
  Me.mouth(); 
  for (int w=0;w<800;w=w+70){
    for (int h=0; h<800; h=h+70){
  drawStar(w+random(255),h+random(255),4);
    }
  }
  
  if (mousePressed){
  image(photo4,0,0);
   word3();
  for(int i=0;i<20;i+=1){
    fill(0);
    ellipse(mouseX +random(800)-200,mouseY+random(800)-200,8,8);
      }
  Me.eyes();
  Me.checks();
  Me.tears();
  Me.mouth();
  //fill(0);
  //ellipse(247,370,200,200);
  //ellipse(450,370,200,200);
  cover1.display(247,370);
  cover2.display(450,370);
}
  
}
if(count ==3){
 
 image(photo5,0,0);
 //Me.eyes();
 //Me.checks();
 //Me.mouth(); 
 // ball
 noStroke();
  fill(0);
  ellipse(78+n,385,200,200);  
  // eyes
  noStroke();
  fill(249, 245, 245);
  ellipse(250+m,370,40,40);
  ellipse(450+m,370,100,100);
  //
  noStroke();
  fill(243, 103, 88);
  ellipse(190+m,450,100,40);
  ellipse(520+m,450,100,40);
  //
  noStroke();
  fill(212);
  rect(250+m,480,200,10);
 //Black.display(78+n,385);
 n=n+1;
 m=m+1;

 if (mousePressed){
   background(0);
   image(brave,0,0);
   word4();
 }
}

if(count ==4){

  image(photo6,0,0);
  Black.display(mouseX+random(0,15),mouseY+random(0,15));
  Me.eyes();
  Me.checks();
  if (n1 == 200 - 1) 
  {
    n1= 0; 
    p = new Colorful[200];
  }
  for (int i=1; i<=n1; i++)
  {
    p[i].update();
    p[i].show();
  }
 Me.mouth(); 
  word5();
 }  
 // negative things
 //if (mousePressed==true){
   
  if (n1 < 200 - 1) n1++;
  p[n1] = new Colorful(350, 510, random(360));
  Me.mouth();

if(count ==5){
  //background(0);
  image(photo7,0,10);
  //Me.eyes(); this's not a good solution though...
  noStroke();
  fill(249, 245, 245);
  ellipse(200 + mouseX * 0.1,300 + mouseY * 0.1,40,40);
  ellipse(500 + mouseX * 0.1,300 + mouseY * 0.1,100,100);
  Me.checks();
  //Me.mouth(); 
 noStroke();
 fill(248, 237, 242);
 arc(350,400,200,200,PI/5,PI-PI/5,OPEN);
  word6();
  // black ball!
  location.add(velocity);
  velocity.add(gravity);
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }if (location.y > height) {
   velocity.y = velocity.y * -0.95; 
   location.y = height;
  }
  noStroke();
  fill(0);
  ellipse(location.x,location.y,200,200);
  // pink ball!!!!!
   if (mousePressed==true){
  background(0);
  noStroke();
  fill(241, 190, 210); 
  ellipse(location.x,location.y,200,200);
  fill(250, 144, 152);
  ellipse(location.x-65,location.y-10,50,20);
  ellipse(location.x+65,location.y-10,50,20);  
  fill(91, 78, 79);
  ellipse(location.x-45,location.y-45,20,20);
  ellipse(location.x+45,location.y-45,20,20);
  // shining pink stars in background
  fill(247, 178, 193);
  star(random(width),random(height),random(5,20));
  star(random(width),random(height),random(5,20));
  star(random(width),random(height),random(5,20));
   }
  
  
}
if(count ==6){
  image(p0,-600,-50);
  Me.eyes();
  Me.checks();
  Me.mouth(); 
  word7();
  mover.update();
  mover.display(254, 213, 225);
  // tricks
  
  fill(201, 151, 171);
  ellipse(100,600,40,40);
  ellipse(300,600,40,40);
  ellipse(500,600,40,40);
  
  if (mouseX>80&&mouseX<120&&mouseY<620&&mouseY>580&&mousePressed){
     
  //background(188, 241, 180);
    image(p1,-40,-40);
    mover.update();
    mover.display(255,238,239);
    
    } 
    if(mouseX<320&&mouseX>280&&mouseY<620&&mouseY>580&&mousePressed){
      //background(169, 211, 223);  
      image(p2,-260,-70);
      mover2.update();
      mover2.display(132, 131, 120);     
    }    
    if(mouseX<520&&mouseX>480&&mouseY<620&&mouseY>580&&mousePressed){
     // background(255, 214, 217); 
      image(p3,-150,-140); 
      mover.update();
      mover.display(132, 231, 220);
    
    }  }
    
  if(count ==7){
    image(define,0,0);
   Super.display(158,301+random(0,15));
  Big.display(154,491+random(0,10));
  Small.display(153,653+random(0,5));
  word8();
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
  
if (mouseX<248&&mouseX>69&&mouseY<400&&mouseY>200&&mousePressed){
  image(define,0,0);
  image(mood2,160,280);
  }else if(mouseX<238&&mouseX>69&&mouseY<574&&mouseY>410&&mousePressed){

  image(define,0,0);
  image(mood2,170,280);
}else if (mouseX<238&&mouseX>69&&mouseY<684&&mouseY>630&&mousePressed){
   image(define,0,0);
   image(mood,170,110);
   
}
}
   if(count ==8){
      image(r,0,0);
      noStroke();
  fill(255, 238, 239); 
  ellipse(location.x,location.y,200+embrace,200+embrace);
  fill(250, 144, 152);
  ellipse(location.x-65,location.y-10,50,20);
  ellipse(location.x+65,location.y-10,50,20);
  fill(91, 78, 79);
  ellipse(location.x-45,location.y-45,20,20);
  ellipse(location.x+45,location.y-45,20,20);
   if (mousePressed){
   embrace=embrace+10;
  }
  
  Me.eyes();
  Me.checks();
  //Me.mouth(); 
  noStroke();
  fill(248, 237, 242);
 arc(350,400,200,200,PI/5,PI-PI/5,OPEN);
  
  word9();
 // black ball 
 location.add(velocity);
  velocity.add(gravity);
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }if (location.y > height) {
   velocity.y = velocity.y * -0.95; 
   location.y = height;
  }
 // noStroke();
  //fill(63, 57, 57);
  //ellipse(location.x,location.y,200,200);
 // black becomes cute ball 
  //if (mousePressed==true){
 // background(0);
  
  if (mousePressed==true){// from one of my past work ( shining stars)
  fill(255, 226, 83);
  stroke(255);
  ellipse(72,153,50+random(50),50+random(100));
  ellipse(230,700,50+random(50),50+random(100));
  ellipse(660,170,50+random(50),50+random(100));// three shaking big stars 
  fill(random(0,255),random(0,255),random(90));
  ellipse(random(0,800),random(0,800),20,20); // little colorful ball 
  
  }
   }
    if(count ==9){
      image(s,0,0);
      Me.eyes();
  Me.checks();
  //Me.mouth();
   noStroke();
  fill(255);
 arc(350,400,200,200,PI/5,PI-PI/5,OPEN);
 stroke(0);
 line(307,458,307,493);
 line(346,458, 346,499);
  line(381,458, 381,494);
  word10();
  
  mover.update();
  mover.display(254, 213, 225);
  
  star2(mouseX,mouseY);
    }
    
     if(count ==10){
        background(0);
        wordfinish();
       mover.update();
       mover.display(246, 185, 209);
       strokeWeight(5);
       fill(245);
       arc(300,300,300,300,PI/6,PI-PI/6,OPEN);
       
      
     }
}



  
// scene 3  
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

// scene 6
void star(float x, float y, float r) {
  pushStyle();
  noStroke();
  float x1 = x;
  float y1 = y-r;
  float x3 =x- cos(PI/6)*r;
  float y3 =y + sin(PI/6)*r;
  float x2 = x + cos(PI/6)*r;
  float y2 = y + sin(PI/6)*r;
  float x4 =x - cos(PI/6)*r;
  float y4 =y - sin(PI/6)*r;
  float x5 =x + cos(PI/6) * r;
  float y5 =y - sin(PI/6) * r;
  float x6 = x ;
  float y6 = y + r;
 triangle(x1, y1, x2, y2, x3, y3);
 triangle(x4, y4, x5, y5, x6, y6);
  popStyle();
}
void star2(float x, float y){
   fill(random(240,255), random(220,238), random(145,151));
  noStroke();//no color outline
  beginShape();//start shape drawing
  vertex(x, y-50);
  vertex(x+14, y-20);
  vertex(x+47, y-15);
  vertex(x+23, y+7);
  vertex(x+29, y+40);
  vertex(x, y+25);
  vertex(x-29, y+40);
  vertex(x-23, y+7);
  vertex(x-47, y-15);
  vertex(x-14, y-20);
  endShape(CLOSE);
 }
 void wordfinish(){
   String finish = " Hi! Black Ball!! ";
   String finish2 = " The End." ; 
   fill(253, 203, 222);
  textSize(42);
  text(finish,100,100,500,500);
  fill(253, 203, 222);
  textSize(50);
  text(finish2,100,500,500,500);
  
   
   
 }
 
 
void word1(){ 
  String one = " I Had A Black Ball Names Depression... ";
 // String two = " I am a person with depression.. ";
  //String three = " I am afraid of talking about my struggles...";
  // scene 1
  fill(227, 220, 220);
  textSize(42);
  text(one,100,100,500,500);
 }
 
 void word2(){ 
  String two = " I am a person with depression.. ";
  String three = " I am afraid of talking about my struggles...";
  fill(227, 220, 220);
  textSize(30);
  text(two,100,100,500,500);
  textSize(30);
  text(three,100,200,500,500);  
}

void word3(){ 
  String four = " When the rest of world seem to be enjoying life ";
  String five = " I could only see it through BLACK BALL...";
  fill(255);
  textSize(40);
  text(four,100,50,500,500);
  textSize(40);
   text(five,100,150,500,500);
 }
 
 void word4(){
    String six = " At social situations, it would sniff out what confidence I had and chase it away... ";
  String greeting = " Confidence ??? ";
  fill(0);
  textSize(42);
  text(six,100,400,500,500);
  text(greeting,100+n,700,500,500);
 }
 
 void word5(){ 
  String negative = " Black Ball would make me think and say negative things... ";
  //String positive = " I want to say something colorful...But Black Ball makes them black"; 
  fill(227, 220, 220);
  textSize(32);
  text(negative,100,100,500,500);
  //fill(223, 131, 168);
  //textSize(22);
  //text(positive,100,200,500,500);
 }
 
 void word6(){
  String thanks = "Thankfully I sought professional help.";
  String thanks2 = "This was my turning point in my life...";
  fill(0);
  textSize(36);
  text(thanks,100,50,500,500);
  textSize(35);
  text(thanks2,100,170,500,500);   
 }
 void word7(){ 
  String tricks= "I learned not to be afraid of it and taught him a few new tricks of my own"; 
  fill(201, 151, 171);
  textSize(32);
  text(tricks,100,100,500,500);
 }
 
void word8(){ 
  String eleven = "I also learned to keep a mood journal, getting things on paper!";
  fill(20);
  textSize(40);
  text(eleven,50,50,500,500);
 }
 
void word9(){ 
  String embrace = " I learned that it is better to embrace my 'black ball'!";
  fill(255);
  textSize(40);
  text(embrace,100,100,500,500); 
 }
 void word10(){ 
  String great= "Black Ball may always be my life but never be the beast!"; 
  fill(253, 189, 194);
  textSize(42);
  text(great,100,100,500,500);
}
 


void keyPressed(){
if(keyPressed == true&&count<10){
count++;
}
}



 
