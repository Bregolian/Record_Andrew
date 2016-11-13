float ellipseX=0;
float ellipseY=0;
void setup(){
  size(2000, 2000);
  background(0,255, 0);
}
void draw(){
  for(int i=0;i<=10;i++){
  ellipse(ellipseX,ellipseY,5,5);
 fill(0, 0, 255) ;
   ellipseX=random(2000);
   ellipseY=random(2000);
   
  }
}
float frequency = .001;
float noiseInterval = PI; 


void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}


float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}


float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}

