import "dart:io";

void main(){

    print("Enter first word:");
    String st1 = stdin.readLineSync()!;
    print("Enter second word:");
    String st2 = stdin.readLineSync()!;

    if(anagrams(st1 , st2)){
        print("Anagram");
    }else {
        print("Not Anagram");
    }
}
bool anagrams(String str1,String str2){
    List<String> cleanstr1=str1.replaceAll(RegExp('[^A-Za-z]'),'').toLowerCase().split('')..sort(); 
    List<String> cleanstr2=str2.replaceAll(RegExp('[^A-Za-z]'),'').toLowerCase().split('')..sort(); 

    return cleanstr1.join('') == cleanstr2.join('');
}