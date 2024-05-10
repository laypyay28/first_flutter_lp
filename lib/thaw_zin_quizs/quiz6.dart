import 'dart:io';
import 'dart:collection';


void main(){
  List <int>stack1=[];
  List <int>stack2=[];

  void enqueue(int value){
  stack1.add(value);
}

 void printQueue(){
  List<int> queue =[...stack2.reversed,...stack1];
  print('Queue: $queue');
 }

  print ("Enter elements to enqueue(enter 'q' to quit):");
  while(true){
    var input = stdin.readLineSync();
    if (input == 'q') break;
    enqueue(int.parse(input ?? '0'));
    

    
  }
  printQueue();


  

  }

 


