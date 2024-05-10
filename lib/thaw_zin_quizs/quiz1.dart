import 'dart:io';

//import 'package:flutter/services.dart';

bool anagrams(String str1,String str2){
  String cleanstr1=str1.replaceAll(RegExp(r'[^a-zA-Z0-9]'),'').toLowerCase();
  String cleanstr2=str2.replaceAll(RegExp(r'[^a-zA-Z0-9]'),'').toLowerCase();

  List<String> sortedStr1=cleanstr1.split('')..sort();
  List<String> sortedStr2=cleanstr2.split('')..sort();

  return sortedStr1.join()==sortedStr2.join();

}
void main(){
  print("please enter the first word");
  String text1= stdin.readLineSync()!;

  print("please enter the second word");
  String text2= stdin.readLineSync()!;

  if(anagrams(text1,text2)){
    print("$text1 and $text2 are anagrams");
  }

  else{
    print("$text1 and $text2 are not anagrams");
  }


}