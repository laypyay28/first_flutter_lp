import 'dart:io';
void main()
{
  print("please enter a palindrome text");
  String text = (stdin.readLineSync()!);
  if (IsPalindrome(text)){
    print("text is a palindrome");

  }else{print("text is not a palindrome");
  }

}
bool IsPalindrome(String str){
 String cleanstr=str.replaceAll(RegExp('[^a-zA-z0-9]'),'').toLowerCase();
 return cleanstr == cleanstr.split('').reversed.join('');
}