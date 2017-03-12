int x=200;
int y=500;
int rectX=500;
int rectY;
double birdYVelocity = 0;
double gravity = 0.5;
int rectLength=1000;
void setup() {
  size(1000, 1000);
}
void draw() {
  background(0, 0, 255);
  fill(119, 136, 0);
  ellipse(x, y, 50, 50);
  y+=birdYVelocity;
  birdYVelocity+=gravity;
  fill(0, 255, 0);
  rect(rectX, rectY, 100, rectLength);
  rectX-=10;
  if (rectX<=0) {
    rectX=1000;
    rectY = (int)random(300, 800);
  }
  if (y>=1000) {
    y=950;
  }
}
void mousePressed() {
  birdYVelocity=-10;
}
void intersects(int x, int y, int rectX, int rectY, int rectLength) {
  if (y > rectY - 4 && x > rectX && x < rectX + rectLength) {
    
    println("You Died!");
  } 
}

