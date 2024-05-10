import 'dart:io';
import 'dart:math';
void main (){
  
  print("Enter x1 coordinator");
  double x1 = double.parse(stdin.readLineSync()!);
  print("Enter y1 coordinator");
  double y1 = double.parse(stdin.readLineSync()!);
  print("Enter circle one radius");
  double R1 = double.parse(stdin.readLineSync()!);

  print("Enter x2 coordinator");
  double x2 = double.parse(stdin.readLineSync()!);
  print("Enter y2 coordinator");
  double y2 = double.parse(stdin.readLineSync()!);
  print("Enter circle two radius");
  double R2 = double.parse(stdin.readLineSync()!);

  double C1C2 = sqrt(pow(x1 - x2,2) +pow(y1 - y2,2));

  if (C1C2 <= R1-R2){
    print("Circle B is inside A");
  }
  else if (C1C2 <= R2-R1){
    print("Circle A is inside B");
  }
  else if (C1C2 < R1+R2){
    print("Circle intersects each other");
  }
  else if (C1C2 == R1+R2){
    print("Circle A and B are in touch with each other");
  }
  else {
    print("Circles do not intersect each other");
  }
   
} 
