import "dart:io";

bool plaindrone(String str){    
    String cleanstr=str.replaceAll(RegExp(r'[^a-zA-z0-9]'),'').toLowerCase();   
    return cleanstr == cleanstr.split('').reversed.join('');
}

void main (){
    print("enter a plaindrone text");

String text= stdin.readLineSync()!;

if (plaindrone(text))
    {
        print("$text is a plaindrone");
   }
   else{
        print("$text is not a plaindrone");
   }
}