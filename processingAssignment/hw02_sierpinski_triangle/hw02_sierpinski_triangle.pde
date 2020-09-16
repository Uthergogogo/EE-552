/*
@author: Zeyu Wu
*/
void setup() {
  size(800,800);

}

void draw() {
  background(255);
  sierpinski(0,height, width/2,0, width,height, level);
  level++;
  if(level>9){
    level = 0;
  }
  frameRate(1);
}

int level = 0;

void sierpinski(int x1, int y1, int x2, int y2, int x3, int y3,
                int level) {
  if (level == 0) {
    fill(1);
    triangle(x1,y1,x2,y2,x3,y3);
    return;
  }else{
    sierpinski((x1+x2)/2 ,(y1+y2)/2 ,x2, y2, (x2+x3)/2 ,(y2+y3)/2, level-1);  // top triangle
    sierpinski(x1 ,y1 ,(x1+x2)/2 ,(y1+y2)/2, (x1+x3)/2 ,(y1+y3)/2, level-1);  // left-down triangle
    sierpinski((x1+x3)/2 ,(y1+y3)/2 ,(x2+x3)/2, (y2+y3)/2, x3, y3, level-1);  // right-down triangle
  }

}
