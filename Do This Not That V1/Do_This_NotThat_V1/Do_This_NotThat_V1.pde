// Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float triangleDisplayX, triangleDisplayY, triangleDisplayWidth, triangleDisplayHeight;
float circleX, circleY, circleWidth, circleHeight;
Boolean triangleOn=false, circleOn=false;
color lightBlue=#624CFF;
 void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight
  
 }//End setup() 
  
  void draw() {
   background(lightBlue); 
   rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
   //textDraw1();
   rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
   //textDraw2();
   if (triangleOn == true && circleOn == false) rect(triangleDisplayX, triangleDisplayY, triangleDisplayWidth, triangleDisplayHeight);
   if (triangleOn == false && circleOn == true) ellipse(circleX, circleY, circleWidth, circleHeight);
    
    
    
  }//End draw()  
    
  void mousePressed() { 
  triangleOn = false;
  circleOn = false;
  println ("Before", triangleOn, circleOn);
   
  if (mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1 ) triangleOn = true;
  if (mouseX>buttonX2 && mouseX<buttonX2+buttonWidth2 && mouseY>buttonY2 && mouseY<buttonY2+buttonHeight2 ) circleOn = true;
  println ("After", triangleOn, circleOn);
   }//End mousePressed()
