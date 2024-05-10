import "dart:io";

void main(){
  stdout.writeln("please enter a year");
int year = int.parse(stdin.readLineSync()!);
  if (year % 4 == 0){
    if (year % 100 == 0){
      if (year % 400 == 0){
        print("year is a leap year");
      }
      else{
        print("year is not a leap year");
      }
      }else{
        print("year is  a leap year");
    }
    }else{
        print("year is not a leap year");
  }
}
  
