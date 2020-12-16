// Global Variables
float buttonX, buttonY, buttonWidth, buttonHeight;
float triangleDisplayX, triangleDisplayY, triangleDisplayWidth, triangleDisplayHeight;
float circleX, circleY, circleWidth, circleHeight;
Boolean triangleOn=false, circleOn=false;
color black=#1CE5BB;
void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  //population(); //illustrates multiple lines of code
  //textSetup();
}//End setup()

void draw() {
  background(black);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  //textDraw();
  if (triangleOn == true && circleOn == false) rect(triangleDisplayX, triangleDisplayY, triangleDisplayWidth, triangleDisplayHeight);
  if (triangleOn == false && circleOn == true) ellipse(circleX, circleY, circleWidth, circleHeight);
}//End draw()

void mousePressed() {
  // Booleans on and off
  println ("Before", triangleOn, circleOn);
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) {
    if (triangleOn == true) {
      triangleOn = false;
      circleOn = true;
    } else {
      triangleOn = true;
      circleOn = false;
    }
  }
  println ("After", triangleOn, circleOn);
}//End mousePressed()
