import "dart:io";

void main(){
  stdout.writeln("please enter a number");
int num = int.parse(stdin.readLineSync()!);
  for (var i=2; i<=num; i++){
    if(i == 2 || i == 3|| i ==5 ){
      print(i);
    }
    else{
      if(i % 2 != 0 && i % 3 != 0 && i % 5 != 0){
      print("$i");
    }
  
  }
}
}