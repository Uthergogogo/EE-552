/* 
@author: Zeyu Wu
*/
void setup() {
  for (int i = 1; i <= 99; i+=2) {
    if (i == 99){
      println(i);
    }else{
      print(i);
      print(' ');
    }
  }
  for (int i = 1; i<=32768; i *=2){
    if (i == 32768){
      println(i);
    }else{
      print(i);
      print(' ');
    }
  }
  exit();
}
