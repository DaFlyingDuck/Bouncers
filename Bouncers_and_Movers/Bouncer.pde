class Bouncer {
  
  float x, y;
  float vx, vy;
  float r,g,b;
  
  
  Bouncer() {
    
    x = width/2;
    y = height/2;
    vx = random(-10,10);
    vy = random(-10,10);
    r = random(0,255);
    g = random(0,255);
    b = random(0,255);
    
  }
  
  void act() {
    
   x = x + vx;
   y = y + vy;
   
   if (x > width - 3 || x < 3) vx = vx * -1;
   if (y > height - 3 || y < 3) vy = vy * -1;    
    
    
  }
  
  void show() {
    
    strokeWeight(.2);
    fill(r,g,b);
    circle(x,y,6);
    
    
  }
  
  
  
  
}
