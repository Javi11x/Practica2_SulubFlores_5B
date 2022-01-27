import 'dart:io';

void main() 
{

  print('Ingresa un número: ');  
  int decimal = int.parse(stdin.readLineSync()!);
  int binario = 0;
  int indice = 1;

  while (decimal > 0) 
  {
    binario = binario + (decimal % 2) * indice;
    decimal = (decimal / 2).floor();
    indice = indice * 10; 
  }
  print("El valor binario del número que ingresó es el siguiente $binario"); 

  print('');
  String terminar = 's';
  print('¿Quieres probar de nuevo? presiona s para volver a intentar o cualquier tecla para terminar');
  String? preguntar = stdin.readLineSync();

  while(terminar == 's')
  {
    if(preguntar == 's')
    {
      return main();
    }
    else
    {
      terminar = 'n';
    }
  }
  print('Gracias por probar');
}
