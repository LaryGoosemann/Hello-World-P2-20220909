//Global Variables
int appWidth, appHeight;
//
//declare geometry: square, landscape, portrait
size(960, 540); //fullScreen()
String ls="Landscape or Square", p="Portrait", DO="\nDisplay Orientation", instruct="FIX YO SHIT FOO";
String orientation = (width >= height ) ? ls : p;
println (DO, orientation);
//
appWidth = width;
appHeight = height;
println("Window Width =",width,"\nWindow Height =", height); //key variables
println("Display Width =", displayWidth,"\nDisplay Height =", displayHeight);
//
//Fit CANVAS into Display Monitor
if (width > displayWidth) appWidth = 0; //CANVAS-width will not fit
if (height > displayHeight) appHeight = 0; //CANVAS-height will not fit
if (appWidth != 0 && appHeight != 0) print("Display Geometry is good to go.") ;
if (appWidth == 0 || appHeight == 0) println("STOP! IS BROKEN!");
