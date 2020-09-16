/*
@author: Zeyu Wu
*/
void setup() {
  size(800, 800);
}

final int N = 8;
int dx;
int[][] pieces = new int[N][N];
void draw() {
  int c = 255;
  dx = width / N;
  for (int y = 0; y < height; y += dx) {
    for (int x = 0; x < width; x += dx) {
      fill(c = 255 - c);
      rect(x, y, dx, dx);
    }
    c = 255-c;
  }
  for(int i=0; i<N; i++){
    for(int j=0; j<N; j++){
      if(pieces[i][j] == 1){
        fill(255, 0, 0);
        ellipse(i*dx+50, j*dx+50, dx,dx); 
      }
    }
  }
}

void mousePressed() {
     fill(255,0,0);
     ellipse(mouseX/dx*dx+dx/2, mouseY/dx*dx+dx/2, dx,dx); 
     pieces[mouseX/dx][mouseY/dx] = 1;
}
