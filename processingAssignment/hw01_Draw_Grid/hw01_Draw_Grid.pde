/*
@author: Zeyu Wu
Write a program to draw an nxn grid on the screen that completely fills the window.  Your code should use a loop, not repeatedly write the same code.  Test your code for n=4 and n=8.

 

Your code should depend on the single line:

final int N = 8;
*/
final int N = 8;
void setup(){
  size(600, 600);
}
void draw(){
  // these for lines can be regarded as the grid for N=1 or the frame for the grid with N>=2
  line(0, 0, 0, height);
  line(0, 0, width, 0);
  line(0, height, width, height);
  line(width, 0, width, height);
  // use loop to draw the line to form the grid
  for(float i=1; i<N; i++){
    line(0, (i/N)*height, (float)width, (i/N)*height);
    line((i/N)*width, 0, (i/N)*width, height);
  }
}
