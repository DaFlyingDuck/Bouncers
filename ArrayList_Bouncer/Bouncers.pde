class Bouncer {
  
  float x, y;
  float vx, vy;
  float r,g,b;
  float size;
  int hp;
  
  
  Bouncer() {
    
    hp = 1;
    x = mouseX;
    y = mouseY;
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
    if (x > width - size || x < size) {
      vx = vx * -1;
      hp --;
    }
    
    if (y > height - size || y < size) {
      vy = vy * -1;
      hp --;
    }
    
    //bouncing off other bouncers
    int j = 0;
    while (j < bouncers.size()) {
      
      if(x != bouncers.get(j).x && y != bouncers.get(j).y) { // if not checking itself so it doesnt bounce off of itself
        if (dist(x, y, bouncers.get(j).x, bouncers.get(j).y) < (size/2 + (bouncers.get(j).size)/2)) { //if its contacting another ball
          
          vx = -(bouncers.get(j).x - x)/5;
          vy = -(bouncers.get(j).y - y)/5;
      
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
