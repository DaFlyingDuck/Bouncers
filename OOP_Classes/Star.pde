class Star { //class is something you see repeated over nad over again in game
  
 //instance variables or fields
 float x, y, size;
 float colourR, colourG, colourB;
 PVector v;
 // constructor: speical function that deines how an object of this class is made
 //              defines intial values for fields
 Star() {
   
  x = random(0, width);
  y = random(0, height);
  v = new PVector(0, random(1,5));
  size = .7 * v.mag();
  colourR = random(0,255);
  colourG = random(0,255);
  colourB = random(0,255); 
   
   
 }
 
 //behaviour functions: these define what a star does
 void show() {
   
  fill(colourR, colourG, colourB);
  circle(x,y,size);
   
 }
 
 void act() {
   
   y = y + v.mag();
   if (y > height + size) {
     y = -size;
   }
   
   
 }
  
}
