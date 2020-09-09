/* 
@author: Zeyu Wu
*/
void setup(){
  size(500, 500);
}
int x=25, y=25;
void draw(){
  background(110, 110, 110);
  noStroke();
  circle(x, y, 50);
  int step = 1;
  if(x< width-25 && y==25){
    x += step;
  }else if(x==width-25&&y<height-25){
    y += step;
  }else if(x>25&&y==height-25){
    x -= step;
  }else if(x==25&&y>25){
    y -= step;
  }
}
