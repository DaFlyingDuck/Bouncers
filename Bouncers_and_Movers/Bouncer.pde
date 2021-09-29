class Bouncer {
  
  float x, y;
  float vx, vy;
  float r,g,b;
  float size;
  
  
  Bouncer() {
    
    x = width/2;
    y = height/2;
    size = random(6,18);
    vx = random(-4,4);
    vy = random(-4,4);
    r = random(0,255);
    g = random(0,255);
    b = random(0,255);
    
  }
  
  void act() {
   
    // movement of the bouncers 
    x = x + vx;
    y = y + vy;
   
    //bouncing off of walls
    if (x > width - size || x < size) vx = vx * -1;
    if (y > height - size || y < size) vy = vy * -1;    
    
    //bouncing off other bouncers
    int j = 0;
    while (j < numBouncers) {
      
      if(x != bouncers[j].x && y != bouncers[j].y) { // if not checking itself so it doesnt bounce off of itself
        if (dist(x, y, bouncers[j].x, bouncers[j].y) < (size/2 + (bouncers[j].size)/2)) { //if its contacting another ball
          
          vx = -(bouncers[j].x - x)/5;
          vy = -(bouncers[j].y - y)/5;      
      
        }
      }
      
       j = j + 1;
    }
    
  }
  
  void show() {
    
    strokeWeight(.2);
    fill(r,g,b);
    circle(x,y,size);
    
    
  }
  
  
  
  
}
