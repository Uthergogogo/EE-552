void setup(){
  size (500, 500);
  background (225, 225, 225);
  //stroke (0);
}

int x = 50, y = 50, dx = 1;

void draw(){
  stroke(225, 225, 225);
  circle (x, y, 100);
  
  if (y == 50){
    x = x + dx;
  }
  
  if (x >= width - 50){
    y = y + dx;
  }
  
  if (y >= height - 50){
    x = x - dx;
  }
  
  if (x < 50){
    y = y - dx;
  }
  
}
