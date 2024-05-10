import 'dart:io';
void main(){
    stdout.writeln("Enter year");
    int year = int.parse(stdin.readLineSync()!);
    if(year % 4==0)
    {
        print("this is leap year");
    }
    else{
        print("this is not leap year");
        }
    }