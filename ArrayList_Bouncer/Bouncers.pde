class Bouncer {
  
  PVector loc;
  PVector vel;
  float r,g,b;
  float size;
  int hp;
  
  
  Bouncer() {
    
    hp = 1;
    loc = new PVector(mouseX,mouseY);
    vel = new PVector(random(-4,4),random(-4,4));
    size = random(6,18);
    r = random(0,255);
    g = random(0,255);
    b = random(0,255);
    
  }
  
  void act() {
   
    // movement of the bouncers 
    loc.add(vel);
   
    //bouncing off of walls
    if (loc.x > width - size || loc.x < size) {
      vel.x = vel.x * -1;
      hp --;
    }
    
    if (loc.y > height - size || loc.y < size) {
      vel.y = vel.y * -1;
      hp --;
    }
    
    //bouncing off other bouncers
    int j = 0;
    while (j < bouncers.size()) {
      
      if(loc.x != bouncers.get(j).loc.x && loc.y != bouncers.get(j).loc.y) { // if not checking itself so it doesnt bounce off of itself
        if (dist(loc.x, loc.y, bouncers.get(j).loc.x, bouncers.get(j).loc.y) < (size/2 + (bouncers.get(j).size)/2)) { //if its contacting another ball
          
          vel.x = -(bouncers.get(j).loc.x - loc.x)/5;
          vel.y = -(bouncers.get(j).loc.y - loc.y)/5;
      
        }
      }
      
       j = j + 1;
    }
    
  }
  
  void show() {
    
    strokeWeight(.2);
    fill(r,g,b);
    circle(loc.x,loc.y,size);
    
    
  }
  
  
  
  
}
