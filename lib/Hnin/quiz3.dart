import 'dart:io';
void main(){
    print("Enter word: ");
    String word= (stdin.readLineSync()!);

    if(palindrome(word))
    print("This is palindrome.");
    else
    {print("This is not palindrome.");}
}
bool palindrome(String s){
String cleanedText = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'),'').toLowerCase();
String reversedText = cleanedText.split('').reversed.join('');
return cleanedText == reversedText;
}