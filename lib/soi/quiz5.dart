import "dart:io";
void main(){

int i;
List factor = [];

print("Enter a positive number");
int number = int.parse(stdin.readLineSync()!);


for ( i=1; i <= number; i++ )
  {
      if (number % i == 0)
      {
      factor.add(i);
      }
  }
  if (factor.length>2)
  {
    print("$number is not a prime number");
  } 
  else
  {
    print("$number is a prime number");
}
}