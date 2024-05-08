import 'dart:io';
void main(){
    print("Enter first word: ");
    String fw = (stdin.readLineSync()!);

    print("Enter second word: ");
    String sw = (stdin.readLineSync()!);

    if(checkanagram(fw,sw))
    print("This is anagram.");
    else
    {print("This is not anagram.");}
}
bool checkanagram(String s1,String s2){
List<String> str1=s1.replaceAll(RegExp('[^A-Za-z]'),'').toLowerCase().split('')..sort();
List<String> str2=s2.replaceAll(RegExp('[^A-Za-z]'),'').toLowerCase().split('')..sort();
return str1.join('')==str2.join('');
}
