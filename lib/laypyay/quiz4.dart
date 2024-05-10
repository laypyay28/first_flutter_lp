import 'dart:io';
import 'dart:math';

void main(){

  print("enter x1 coodinate");
  double x1 = double.parse(stdin.readLineSync()!);
   print("enter y1 coodinate");
  double y1 = double.parse(stdin.readLineSync()!);
   print("enter R1 coodinate");
  double R1 = double.parse(stdin.readLineSync()!);

   print("enter x2 coodinate");
  double x2 = double.parse(stdin.readLineSync()!);
   print("enter y2 coodinate");
  double y2 = double.parse(stdin.readLineSync()!);
   print("enter R2 coodinate");
  double R2 = double.parse(stdin.readLineSync()!);

  double c1c2 = sqrt(pow(x1 - x2,2) +pow(y1 - y2,2));
  
  if(c1c2<=R1 - R2){
  print("circle B is insideA");
  }
  else if (c1c2 <=R2 - R1){
    print("circle A is inside B");
    }
    else if(c1c2<R1 + R2){
      print("circle interects each other");
    }
    else if(c1c2 == R1 + R2){
      print("Circle A and B are in touch with each other");
    }
    else{
      print("Circle A and B do no overlap");
    }

  }




