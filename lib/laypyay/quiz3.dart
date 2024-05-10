import "dart:io";

void main(){
stdout.writeln("please enter a word");
String str = (stdin.readLineSync()!);
  
    if (isPlaindrome(str)){
      print("input is a plaindrome");
    }
    else{
      print("input is not a plaindrome");
    }
}
bool isPlaindrome(String str){
  String reversed = str.split('').reversed.join('');
  return str == reversed;
}

