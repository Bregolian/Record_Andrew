int xrain=100;
int yrain=0;
int xdragon=20;
PImage dragon;
int score=0;
void setup(){
  size(800,500);
  dragon=loadImage("images.png");
}
void draw(){
  //println(yrain);
  background(0, 0, 255);
  
  ellipse(xrain, yrain, 10, 60);  //in draw method
  fill(238, 17, 204);      //in draw method
  stroke(0,0,0);
  yrain+=2;
  if(yrain==500){
  float p= random(39);
   int intp=(int)p;
   xrain=intp*20;
   yrain=0;
   }
   image(dragon,xdragon,300);
  
  if(yrain==300){
     checkCatch(xrain);
     print("Score");
   }
}
void keyPressed(){
if (keyCode==RIGHT){
  xdragon+=20;
} 
if (keyCode==LEFT){
  xdragon-=20;
} 
}
void checkCatch(int x){
if (x > xdragon -50 && x < xdragon+150)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}