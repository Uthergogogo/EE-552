/*
@author: Zeyu Wu
*/

void setup(){
  size(500, 500);
}
// set original attributes
float x1 = 30, y1=50, vx1=10, vy1=5, m1=5, x2=480, y2=50, vx2=-5, vy2=-2, m2=10;
void draw(){
  background(255, 255, 255);
  circle(x1, y1, 60);
  fill(255, 0, 0);
  circle(x2, y2, 40);
  fill(0, 255, 0);

  x1 += vx1;
  y1 += vy1;
  x2 += vx2;
  y2 += vy2;
  
  // ball1 collision with the wall
  if(x1<30){
    vx1 = -vx1;
  }else if(x1>=width-30){
    vx1 = -vx1;
  }else if(y1<30){
    vy1 = -vy1;
  }else if(y1>=height-30){
    vy1 = -vy1;
  }
  
  // ball2 collision with the wall
  if(x2<20){
    vx2 = -vx2;
  }else if(x2>=width-20){
    vx2 = -vx2;
  }else if(y2<20){
    vy2 = -vy2;
  }else if(y2>=height-20){
    vy2 = -vy2;
  }
  
  // distance for the two balls
  float distance = sqrt(pow(x2-x1, 2) + pow(y2-y1, 2));
  
  // balls collision
  if (distance < 50){
    float temp1 = vx1;
    float temp2 = vy1;
    
    // reset speed for balls on x and y direction
    vx1 = ((m1-m2)*vx1+2*m2*vx2)/(m1+m2);
    vx2 = ((m2-m1)*vx2+2*m1*temp1)/(m1+m2);
    vy1 = ((m1-m2)*vy1+2*m2*vy2)/(m1+m2);
    vy2 = ((m2-m1)*vy2+2*m1*temp2)/(m1+m2);
    
  }
}
