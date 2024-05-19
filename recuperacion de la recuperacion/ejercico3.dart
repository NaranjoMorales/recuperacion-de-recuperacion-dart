import 'dart:io';

void main(){
  Map<int, dynamic> diccionario={};
  bool f=true;
  do{
    print("a. ingresar aprendiz");
    print("b. consultar notas aprendiz");
    print("c. menor nota");
    print("d. mayor nota");
    print("e. promedio grupal");
    print("f. quienes aprobaron?");
    print("g. salir");
    print(" que deseas hacer");
    dynamic opcion =stdin.readLineSync();


      switch(opcion){
       case'a':
        print("ingrese cedula");
        int numero=int.parse(stdin.readLineSync()!);
        print("ingrese nombre");
        dynamic name=stdin.readLineSync();
        print("igrese nota ");
        double nota=double.parse(stdin.readLineSync()!);
          agregar(numero, name, nota, diccionario);
       break;
       case'b':
       print(" ingrese cedula del que quiera ver");
       int ced=int.parse(stdin.readLineSync()!);
        mostrar(ced, diccionario);
       break;
      case 'c':
       menor(diccionario);
      break;
      case 'd':
       mayor(diccionario);
      break;
      case 'e':
      promedio(diccionario);
      break;
      case'f':
      break;
       case'g':
       f=false;
       break;

      }

  }while(f);
}
void agregar(int a, dynamic b,double c, Map<int, dynamic> h){
  h[a]={'nombre':b,
        'nota':c};
  print(h);
}

void  mostrar(int a, Map<int, dynamic> h){
    h.forEach((key, value) {
      if(key== a){
        print(" la cedula es  : $key \n el nombre y la nota son: es $value ");
      }
    });
}

void mayor( Map<int, dynamic> h){
  double notaMenor = 0;
  dynamic nombre="";

  h.forEach((key, value) {
    double nota = value['nota'];
    if (notaMenor < nota) {
      notaMenor = nota;
      nombre = value['nombre'];
    }
  });

  print("La menor nota es de  $nombre con una nota de $notaMenor.");
}


void menor( Map<int, dynamic> h){
    double notaMayor = 10000000000;
  dynamic nombre="";

  h.forEach((key, value) {
    double nota = value['nota'];
    if (notaMayor > nota) {
      notaMayor = nota;
      nombre = value['nombre'];
    }
  });

  print("La menor nota es de  $nombre con una nota de $notaMayor.");
}
void promedio( Map<int, dynamic> h){
  double promedio=0;
  int i=0;
  h.forEach((key, value) {
    promedio=promedio + value['nota'];
    i=i+1;
  });
  double resultado=promedio/i;
  print("el promedio es : $resultado");
}
void aprobados(int a, Map<int, dynamic> h){
}