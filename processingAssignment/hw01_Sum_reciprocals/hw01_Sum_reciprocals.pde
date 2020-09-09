/* 
@author: Zeyu Wu
*/
void setup(){
  double sum1 =0, sum2 = 0;
  for(double i=1; i<=100; i++){
    sum1 += 1/i;
  }
  for(double j=100; j>=1; j--){
    sum2 += 1/j;
  }
  print("sum1: "+sum1+'\n'+"sum2: "+sum2+'\n'+"difference: "+(sum2-sum1));
  exit();
}
