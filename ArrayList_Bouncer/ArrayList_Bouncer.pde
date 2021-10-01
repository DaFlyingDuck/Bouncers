//Bouncers with Array Lists

ArrayList<Bouncer> bouncers;


void setup() {
  
  size(800,600);
  rectMode(CENTER);
  
  bouncers = new ArrayList<Bouncer>();
  
}

void draw() {
  
  background(0);
  int i = 0;
  while (i < bouncers.size()) {
    bouncers.get(i).act();
    bouncers.get(i).show();

    
  }
  
}
