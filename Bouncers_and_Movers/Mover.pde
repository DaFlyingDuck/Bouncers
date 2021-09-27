class Mover {
  
  float x, y;
  float r, g, b;
  float size; 
  
  Mover() {
    
   x = width/2;
   y = height/2;
   size = random(1,2);
   r = random(0,255);
   g = random(0,255);
   b = random(0,255);
    
  }
  
  void act() {
    
    x = x + random(-25,25);
    y = y + random(-25,25);
    
  }
  
  void show() {
    
    strokeWeight(.1);
    fill(r,g,b);
    circle(x,y,size);
    
    
    
  }
    
  

  
}
