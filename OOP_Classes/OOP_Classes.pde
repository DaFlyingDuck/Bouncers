Star[] myStars;
int numStars;


void setup() {
  
  size(800,600, FX2D);
  rectMode(CENTER);
  noStroke();
  
  
  numStars = 100;
  myStars = new Star[numStars];
  
  int i = 0;
  while (i < numStars) {
    myStars[i] = new Star();
    i = i + 1;
  }
  
}

void draw() {
  
  fill(0, 100);
  rect(width/2, height/2, width, height);
  
  
  int i = 0;
  while (i < numStars) {
    myStars[i].show();
    myStars[i].act();
    
    i = i + 1;
  }
  
}
