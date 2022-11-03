//Global Variables
int appWidth, appHeight, fontSize;
float centerX, centerY, xStart, yStart, widthRect, heightRect,
      titleX, titleY, titleWidth, titleHeight,
      footerX, footerY, footerWidth, footerHeight;
  String title = "!!JA PIERDOLE KURWA MACHT!!";
  String footer = "!!LEGALIZE NUCLEAR BOMBS!!";
  PFont titleFont;
  color black=#000000, resetDefault;
Boolean nightMode=false;
//
void setup() {
  //Declaring Display Geometry: landscape, square, portrait
  size(700, 400); //Able to deploy with fullScreen();
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //Concatenation: , or + (i.e space)
  println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  //
  if ( appWidth < appHeight ) { //Declaring Landscape & square
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor Display
      appWidth=0;
      appHeight=0;
      println("STOP, is broken");
    } else {
      //Empty ELSE
    }
  }
  //Population
  centerX = width * 1/2;
  centerY = height * 1/2;
  xStart = centerX - ( width * 1/4 );
  yStart  = centerY - ( height * 1/4 );
  widthRect = width * 1/2;
  heightRect = height * 1/2;
  titleX = footerX = appWidth * 1/4;
  titleY = appHeight * 1/12;
  footerY = appHeight * 1/4;
  titleWidth = footerWidth = appWidth * 1/2;
  titleHeight = footerHeight = appHeight * 1/12;
  //
  //Text Setup, single executed code
//Fonts from OS (Operating System)
  String [] fontList = PFont.list();
  printArray (fontList);
  titleFont = createFont("Corbel", 55);
//
  rect(titleX, titleY, titleWidth, titleHeight);
  rect(footerX, footerY, footerWidth, footerHeight);
} //End setup
//
void draw() {
  rect(xStart, yStart, widthRect, heightRect);
  if ( nightMode==true ) println("I am nocturnal.");
if ( nightMode==false ) println("");
//Repeated Executed Code 
  fill(black);
  textAlign(CENTER, CENTER);
  fontSize = 25;
  textFont(titleFont, fontSize);
  text( title, titleX, titleY, titleWidth, titleHeight);
  text( footer, footerX, footerY, footerWidth, footerHeight);
} //End draw
//
void keyPressed() {
  if( key=='N'||key=='n' ) nightMode=true; 
  if(key==CODED && keyCode==LEFT) nightMode=false;
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End Main Program
