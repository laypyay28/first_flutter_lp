import 'dart:io';
void main(){
   stdout.writeln("Enter text");
    String text= (stdin.readLineSync()!);

    if(palindrome(text)){
      print("this is a palindrome");
    }
    else {
       print("this is not palindrome");
    }
    }

    bool palindrome(String s){
    String cleanText=s.replaceAll(RegExp('[^a-zA-z0-9]'),'').toLowerCase();
    String reversedText= cleanText.split('').reversed.join('');
    return cleanText == reversedText;
    }
   
    

    

  