import 'dart:io';

void main(){
   print("first string");
String  str1=(stdin.readLineSync()!);
print("second string");
String str2=(stdin.readLineSync()!);
if (IsAnagrams(str1,str2)){
  print('The string are anagrams' );}
  else{
  
  print('The string are not anagrams');}
}

bool IsAnagrams(String word1,String word2){

List<String> str1=word1.replaceAll(RegExp('[^A-Za-z]'),'').toLowerCase().split('')..sort;
List<String> str2=word2.replaceAll(RegExp('[^A-Za-z]'),'').toLowerCase().split('')..sort;
return str1.join('')==str2.join('');

}

