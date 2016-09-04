import ddf.minim.*;
PImage pictureOfRecord;
int iangle=0;
boolean play=false;
Button Piano_Man = new Button(30, 75, 50, "The Piano Man");
Button Uptown_Girl = new Button(30, 75, 100, "Uptown Girl");

  Minim minim;        //as a member variable
  AudioPlayer pianoMan;
  AudioPlayer uptownGirl;
  AudioPlayer chosen;
void setup(){
  pictureOfRecord= loadImage("record.jpg");
  pictureOfRecord.resize(500,500);
  size(pictureOfRecord.width, pictureOfRecord.height);
  minim = new Minim(this);    //in the setup method
  pianoMan = minim.loadFile("Piano.mp3", 512);
}
void draw(){
 if(!(chosen == null)){
   background(255);
   if(mousePressed){
     chosen.play();
     iangle+=10;
   }
   else
     chosen.pause();
  rotateImage(pictureOfRecord,iangle);
  image(pictureOfRecord, 0,0);
 }
 else{
  background(255); 
  Piano_Man.setVisible(true);
  Uptown_Girl.setVisible(true);
 }
 }
      
  void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}
void buttonActionPerformed(Button button) { //class that handles presses of buttons REQUIRED
  if(button==Piano_Man){
  chosen=pianoMan;
  }
}
