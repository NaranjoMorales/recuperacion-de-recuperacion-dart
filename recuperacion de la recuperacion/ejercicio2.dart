import 'dart:io';

void main(){
  List <int> ganadores=[];
  bool f=true;
  do{
    print("a. ingrese numeros");
    print("b. ordenar ");
    print("c. salir ");
    print("que deseas hacer?");
    dynamic opcion=stdin.readLineSync();

    switch(opcion){
       case 'a':
       print("ingrese el numero ganador");
       int number=int.parse(stdin.readLineSync()!);
        agregar(number, ganadores);
       break;
       case 'b':
       ordenar(ganadores);
       break;
        
        case 'c':
        f=true;
       break;

    }
  }while(f);
}

void agregar(int a, List<int> h){
  h.add(a);
  print(h);
}
void ordenar(List<int> h){
  List <int> temp=[];
 h.sort();
 print(h);
 temp=h.reversed.toList();
 print(temp);
}