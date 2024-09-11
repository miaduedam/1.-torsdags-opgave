// opg 6
/* 
The code in this sketch will not compile, as it referes to varables which have not yet been declared 
Please complete task 5 to get this to compile.
*/
int circleSize;
int numberOfCircles;
int x;
int y;
int counter=0;
int rowCounter=0;
//6.a - erklær mine variabler
int red;
int green;
int blue;

//6.b - tilføjer værdier til farverne
void setup(){
  size(400,400);
  red=255;
  green=255;
  blue=255;
   
  
   numberOfCircles = 30;
   circleSize = width/numberOfCircles;
   ellipseMode(CORNER);
  
}
void draw(){
  x = circleSize*counter;
  y = circleSize*rowCounter;
  
 
 // Un-comment this line after completing step 6.a 
 fill(red,green,blue);
 
 
   
   ellipse(x,y,circleSize,circleSize);
  
  // Explaining conditional assignments. 
  // First part before the ?-mark, is a conditional. 
  // If this is true, the value after the ?-mark will be assigned. 
  // If not, the last value will.
  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1; // framecount tæller hvor mange ganger vi gentegner - når framecount divideres med numberofcircles går i 0 og inge rest har, vil den starte forfra, men hvis vi ser en rest vil der blive tegnet en cirkel mere
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;
  
  
  // Explaining the modulus operator
  // Modulus is what is left when you divide one int with another int.
  // 1 % 3 = 1 (3 people can't share 1 apple without cutting it, so 1 apple is left)
  // 2 % 3 = 2
  // 3 % 3 = 0
 
 //opg.6,c 
 red= counter==0? (int)random(255):red; // (== er lig med =) hvis counter er 0, vil en ny række starter med en random farve (alle tre farver)
 green= counter==0? (int)random(255):green;
 blue= counter==0? (int)random(255):blue;
 
}
