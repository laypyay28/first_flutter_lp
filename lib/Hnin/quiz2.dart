import 'dart:io';
void main(){
    print("Enter year: ");
    int year = int.parse(stdin.readLineSync()!);
    if (year % 4 == 0){
        print("leap year.");
    }
    else
        {print("not a leap year.");}
    }
