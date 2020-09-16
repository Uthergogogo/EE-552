/*
@author: Zeyu Wu
*/

void setup() {
  size(800,800);
  background(255);
}

float x = 0, y = 0, p = 13, q = 15, t = 0, dt = 0.01;
void draw() {
  translate(width/2, height/2);
  scale(width/2, height/(1 - -1));
  x = sin(PI/2-p*t);
  y = sin(PI/2-q*t);
  strokeWeight(0);
  
  if(t>PI*2){
    t = 0;
  }
  t += dt;
  float nx = sin(PI/2-p*t);
  float ny = sin(PI/2-q*t);
  line(x, y, nx, ny);

}
