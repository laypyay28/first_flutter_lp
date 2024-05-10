import "dart:io";
void main(){
 stdout.write(" enter a number : ");
 var number = int.parse(stdin.readLineSync()!);
 var prime =<int>[];
 
 for( var i=2; i<=number; i++)
    {
        var isPrime=true;
        for(var j=2;j<= i/2;j++){
            if (i %j == 0){
                isPrime=false;
                break;
            }
        }
            if(isPrime){
                prime.add(i);
            }

}
print("Prime number before $number are : ${prime.join(" ," )}");

}
