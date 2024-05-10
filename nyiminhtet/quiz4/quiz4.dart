import 'dart:io';
import 'dart:math';
void main(){
  print("Enter the circle1 x y r");
  double x1 =double.parse(stdin.readLineSync()!);
  double y1 =double.parse(stdin.readLineSync()!);
  double r1 =double.parse(stdin.readLineSync()!);

   print("Enter the circle2 x y r");
  double x2 =double.parse(stdin.readLineSync()!);
  double y2 =double.parse(stdin.readLineSync()!);
  double r2 =double.parse(stdin.readLineSync()!);

  double c1c2=sqrt(pow(x1 - x2 ,2 )+ pow(y1- y2 ,2));
  
    if(c1c2<=r1-r2){
      print("Circle B is inside A");
    }
    else if(c1c2<=r2-r1){
      print("Circle A  is inside B");
    }
    else if(c1c2==r1+r2){
      print("Circle A and B are in touch with each other");
    }else{
      print("Circle A and B do not overleap");
    }   
}