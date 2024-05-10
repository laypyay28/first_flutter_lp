import "dart:math";
import "dart:io";

void main(){
  print("For circle 1") ; 
  print("Enter x1 coordinator");  
  double x1=double.parse(stdin.readLineSync()!);
  print("Enter y1 coordinator");  
  double y1=double.parse(stdin.readLineSync()!);
  print("Enter radius");
  double R1=double.parse(stdin.readLineSync()!);

print("For circle 2") ; 
   print("Enter x2 coordinator");  
  double x2=double.parse(stdin.readLineSync()!);
  print("Enter y2 coordinator");  
  double y2=double.parse(stdin.readLineSync()!);
  print("Enter radius");
  double R2=double.parse(stdin.readLineSync()!);

  double C1C2 = sqrt(pow(x1-x2,2)+pow(y1-y2,2)); // distance
  if (C1C2<= R1-R2){
    print("Circle B is inside A");
  }
  else if (C1C2 <= R1-R2){
    print("Circle A is inside B");
  }
  else if (C1C2 < R1+R2){
    print("Circle intersects each other");
  }
  else if (C1C2 == R1+R2){
    print("Circle A and B are in touch with each other");
  }
  else{
    print("Circle A  and B are not overlap");
  }
}


