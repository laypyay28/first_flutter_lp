import 'dart:io';
void main(){
   stdout.writeln("Enter first word");
    String firw= (stdin.readLineSync()!);

     stdout.writeln("Enter second word");
    String sew= (stdin.readLineSync()!);

    if(checkanagram(firw,sew)){
      print("this is anagram");
    }
    else {
       print("this is not anagram");
    }
    }



    bool checkanagram(String s1,String s2){
    List<String> str1=s1.replaceAll(RegExp('[^A-Za-z]'),'').toLowerCase().split('')..sort();
    List<String> str2=s2.replaceAll(RegExp('[^A-Za-z]'),'').toLowerCase().split('')..sort();
    return str1.join('')==str2.join('');

    }

    