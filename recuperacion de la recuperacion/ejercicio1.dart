import 'dart:io';

void main(){
  Map<int, dynamic> diccionario={};
  bool f=true;
  do{
    print("a. ingresar persona");
    print("b. mostrar persona");
    print("c. modificar persona ");
    print("d. eliminar persona ");
    print("e. salir");
    print(" que deseas hacer");
    dynamic opcion =stdin.readLineSync();
      switch(opcion){
       case'a':
        print("ingrese cedula");
        int numero=int.parse(stdin.readLineSync()!);
        print("ingrese nombre");
        dynamic name=stdin.readLineSync();
        agregar(numero, name, diccionario);
       break;
       case'b':
       print(" ingrese cedula del que quiera ver");
       int ced=int.parse(stdin.readLineSync()!);
        mostrar(ced, diccionario);
       break;
       case'c':
       print(" ingrese cedula del que quiera modificar");
       int cedu2=int.parse(stdin.readLineSync()!);
       modificar(cedu2,diccionario);
       break;
       case'd':
       print(" ingrese cedula del que debe eliminar ");
      int cedu3=int.parse(stdin.readLineSync()!);
       eliminar(cedu3, diccionario);
       break;
       case'e':
       f=false;
       break;

      }

  }while(f);
}
void agregar(int a, dynamic b, Map<int, dynamic> h){
  h[a]=b;
  print(h);
}

void  mostrar(int a, Map<int, dynamic> h){
    h.forEach((key, value) {
      if(key== a){
        print(" la decula es : $key y el nombre es $value");
      }
    });
}

void modificar(int a, Map<int, dynamic> h){
  h.forEach((key, value){
     if(key== a){
      print(" que nombre quiere ponerle nuevo?");
      dynamic nuevoNombre=stdin.readLineSync();
      h[a]=nuevoNombre;
     }

  });
 print(h);
}
void eliminar(int a, Map<int, dynamic> h){
  
 if( h.containsKey(a)){
  h.remove(a);
 }
 print(h);
}