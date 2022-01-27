
import 'dart:io';

void main() 
{  
  String eliminarespacios;
  String eliminarsignosmayusculas;
  int palabras;

    print('');
    print('Ingrese una palabra: ');
    String ? palabraingresada = stdin.readLineSync()!;
    palabras = palabraingresada.split(' ').length;

    eliminarespacios = palabraingresada
      .trim()
      .replaceAll(" ", "");
    eliminarsignosmayusculas = eliminarespacios.toLowerCase();
    String flip = eliminarsignosmayusculas.split('').reversed.join('');

    if(eliminarsignosmayusculas == flip)
    {
      print('La palbra que ingresaste tiene $palabras palabras y es un Palíndromo');
    }
    else
    {
      print('La palabra que ingresaste tiene 0 palabras y no es un Palíndromo');
    }

    print('');
    String terminar = 's';
    print('¿Quieres probar de nuevo? presiona s para volver a intentar y cualquier tecla para terminar');
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