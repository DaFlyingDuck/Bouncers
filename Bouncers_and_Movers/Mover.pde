class Mover {
  
  float x, y;
  float r, g, b;
  float size; 
  
  Mover() {
    
   x = width/2;
   y = height/2;
   size = random(3,3);
   r = random(0,255);
   g = random(0,255);
   b = random(0,255);
    
  }
  
  void act() {
    
    x = x + random(-3,3);
    y = y + random(-3,3);
    
  }
  
  void show() {
    
    strokeWeight(.1);
    fill(r,g,b);
    circle(x,y,size);
    
    
    
  }
    
  

  
}
