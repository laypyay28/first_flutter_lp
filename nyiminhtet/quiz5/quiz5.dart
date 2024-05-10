import 'dart:io';


void main(){
 print("enter a number");
  var n = int.parse(stdin.readLineSync()!);
 
  var primes =<int>[];

 for(var i = 2;i<=n;i++){
  var IsPrime = true;
  for(var j = 2;j<=i/2;j++){
    if(i%j==0){
      IsPrime=false ;
      break;
    }
  }
  if(IsPrime){
    primes.add(i);      
    }   
}
print("Primes numbers are : $primes");
}
