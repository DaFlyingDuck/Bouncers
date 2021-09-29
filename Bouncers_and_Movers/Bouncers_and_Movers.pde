Mover[] movers;
int numMovers;

Bouncer[] bouncers;
int numBouncers;



void setup() {
  
  frameRate(6000);
  size(1000, 750);

  
  numMovers = 100;
  movers = new Mover[numMovers];
  int i = 0;
  while (i < numMovers) {
    movers[i] = new Mover();
    i = i + 1;
  }
  
  numBouncers = 50;
  bouncers = new Bouncer[numBouncers];
  int j = 0;
  while (j < numBouncers) {
    bouncers[j] = new Bouncer();
    j = j + 1;
  }
  
  
}


void draw() {
  
    background(0);
    
  int i = 0;
  while (i < numMovers) {
     //movers[i].show();
     //movers[i].act();
    
    i = i + 1;
  }
  
  int j = 0;
  while (j < numBouncers) {
    bouncers[j].show();
    bouncers[j].act();
    
    j = j + 1;
  }
  
  
  
  
}
