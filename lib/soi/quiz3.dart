import "dart:io";
bool palindrome(String str){
  String cleanstr=str.replaceAll(RegExp(r'[^a-zA-Z0-9]'),'').toLowerCase();
  return cleanstr == cleanstr.split('').reversed.join('');
}

void main (){
  print("Enter text");
String text = stdin.readLineSync()!;
if (palindrome(text)){
   print("$text is a palindrome");
  }
  else{
     print("$text is not a palindrome");
  }
}