void setup(){
  size(500, 100);
}
float x1 = 30, y1=50, v1=1, m1=10, x2=480, y2=50, v2=-1, m2=10;
void draw(){
  background(255, 255, 255);
  circle(x1, y1, 60);
  fill(255, 0, 0);
  circle(x2, y2, 40);
  fill(0, 255, 0);
  float vx = ((m1-m2)*v1+2*m2*v2)/(m1+m2);
  float vy = ((m2-m1)*v2+2*m1*v1)/(m1+m2);
  if(x2-x1>50){
    x1 += v1;
    x2 += v2;
  }else if(x2 - x1 == 50){
    x1 += vx;
    x2 += vy;
  }
  
  
  
  
}
