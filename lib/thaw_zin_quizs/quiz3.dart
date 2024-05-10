import 'dart:io';

bool plaindrone(String str){
  String cleanstr=str.replaceAll(RegExp(r'[^a-zA-z0-9]'),'').toLowerCase();
  return cleanstr == cleanstr.split('').reversed.join('');
}

void main(){
  print("please enter a plaindrome text");

String text= stdin.readLineSync()!;

if (plaindrone(text)){
  print("$text is a plaindrome."); 
}
else{
  print("$text is not a plaindrome.");
}
  
}