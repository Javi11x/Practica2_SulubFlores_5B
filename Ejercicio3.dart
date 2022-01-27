
import 'dart:io';

void main() 
{
  print('Ingresa tu altura en centímetros');
  double alturacm = double.parse(stdin.readLineSync()!);
  print('Ingresa tu peso en kilogramos');
  double peso = double.parse(stdin.readLineSync()!);
  double altura = alturacm / 100;
  double IMC = peso / (altura * altura);

  if (IMC < 18.5) 
  {
    print("Tu IMC es de $IMC, por lo tanto tu peso es inferior al normal (rango menos de 18.5)");
  } else if (IMC < 25) 
  {
    print("Tu IMC es de $IMC, por lo tanto tu peso es normal (rango 18.5 - 24.9)");
  } else if (IMC < 30) 
  {
    print("Tu IMC es de $IMC, por lo tanto tu peso es superior al normal (rango 25.0 - 29.9)");
  } else 
  {
    print("Tu IMC es de $IMC, por lo tanto tienes obesidad (rango más de 30.0)");
  }

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