import 'dart:io';
void main() {
  print('Enter number: ');
  var n = int.parse(stdin.readLineSync()!);
  var primes=<int>[];

  for(int i=2;i<=n;i++){
    var Prime=true;
    for(int j=2;j<=i/2;j++){
      if(i%j==0){
        Prime=false;
        break;
      }
    }
  
  if(Prime){
    primes.add(i);
  }
  }
  print("Prime numbers: $primes");
}

