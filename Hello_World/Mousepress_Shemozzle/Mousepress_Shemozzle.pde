//Global Variables
Boolean nightmode=false, ahhh=false;
//
void setup(){}//End setup
//
void draw(){
 if ( nightmode==true ) println("I am nocturnal.");
 if ( nightmode==false ) println("");
 if ( ahhh==true ) println("Where is that button?");
 }//End draw
//
void keyPressed(){}//End Keypressed
//
void mousePressed() {
 if(mouseButton == LEFT) nightmode = true;
 if( mouseButton == RIGHT) nightmode = false;
 if (key=='n'||key=='N') {
 ahhh=true;
 } else {
 ahhh=false;
 }
 ;
}//End Mousepressed
//
//End Main Program
