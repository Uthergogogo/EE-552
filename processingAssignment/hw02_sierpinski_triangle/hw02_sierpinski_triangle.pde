/*
@author: Zeyu Wu
*/

int level = 0;

void sierpinski(int x1, int y1, int x2, int y2, int x3, int y3,
                int level) {
  if (level == 0) {
    triangle(x1,y1,x2,y2,x3,y3);
    return;
  }
  sierpinski(x1+(x2-x1)/2 ,y1+(y2-y1)/2 ,x3+(x1-x3)/2, y3+(y1-y3)/2, x2+(x3-x2)/2 ,y2+(y3-y2)/2, level-1);
  //sierpinski(x1+(x2-x1)/4 ,y1+(y2-y1)/4 ,x3+(x1-x3)/4, y3+(y1-y3)/4, x2+(x3-x2)/4 ,y2+(y3-y2)/4, level-1);
  //sierpinski(x1+(x2-x1)/8 ,y1+(y2-y1)/8 ,x3+(x1-x3)/8, y3+(y1-y3)/8, x2+(x3-x2)/8 ,y2+(y3-y2)/8, level-1);
}


void setup() {
  size(800,800);
}

void draw() {
  background(255);
  sierpinski(0,height, width/2,0, width,height, level);
  frameRate(1);
  level++;
  if (level == 8) 
    level = 0;
  //triangle(0, height, width/2, 0, width, height);
  //fill(255, 255, 255);
}



//void setup() {
//  size(800, 800);
//  background(200);
//  smooth();
//  noStroke();
//  colorMode(HSB, 8, 100, 100);
//  triangleSier(0, 700, 400, 0, 800, 700, 7);
//}

//void triangleSier(float x1, float y1, float x2, float y2, float x3, float y3, int n) {
//  // 'n' is the number of iteration.
//  if ( n > 0 ) {
//    fill(0, 128/n, 128);
//    triangle(x1, y1, x2, y2, x3, y3);
    
//    // Calculating the midpoints of all segments.
//    float h1 = (x1+x2)/2.0;
//    float w1 = (y1+y2)/2.0;
//    float h2 = (x2+x3)/2.0;
//    float w2 = (y2+y3)/2.0;
//    float h3 = (x3+x1)/2.0;
//    float w3 = (y3+y1)/2.0;
    
//    // Trace the triangle with the new coordinates.
//    triangleSier(x1, y1, h1, w1, h3, w3, n-1);
//    triangleSier(h1, w1, x2, y2, h2, w2, n-1);
//    triangleSier(h3, w3, h2, w2, x3, y3, n-1);
//  }
//}
