//Global Variables
int appWidth, appHeight;
//
void setup() {
//declare geometry: square, landscape, portrait
size(960, 540); 
//fullScreen()
//
appWidth = width;
appHeight = height;
//
//Concetanation
println("Window Width =",width,"\nWindow Height =", height); //key variables
println("Display Width =", displayWidth,"\nDisplay Height =", displayHeight);
//
//Ternary Operator
String ls="Landscape or Square", p="Portrait", DO="Display Orientation", instruct="JACKASS";
String orientation = (width >= height) ? ls : p;
println (DO, orientation);
//
//if ORIENTATION is wrong... feedback to fix it
if (orientation==p) println(instruct);
//Fit CANVAS into Display Monitor
if (width > displayWidth) appWidth = 0; //CANVAS-width will not fit
if (height > displayHeight) appHeight = 0; //CANVAS-height will not fit
if (appWidth != 0 && appHeight != 0) print("Display Geometry is good to go.") ;
if (appWidth == 0 || appHeight == 0) println("STOP! IS BROKEN!");
} //End Setup
//
void draw() {} //End Draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End Main Program
