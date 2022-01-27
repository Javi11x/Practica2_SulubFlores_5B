
import 'dart:io';

void main() 
{
  
  //int horas = 0;
  int salario = 120;
  int salarioex = 175;
  int salariofinal = 0;
  int acta = 0;
  
  while(acta < 2)
  {
    print('');
    print('Ingrese las horas trabajadas: ');
    int horas = int.parse(stdin.readLineSync()!);
    if(horas >= 27 && acta < 2)
  {
    if(horas >= 41)
    {
      horas = horas -40;
      salariofinal = salarioex * horas + 4800;
      print('Su sueldo es de $salariofinal pesos' );
      horas = horas + 40;
    }
    else
    {
      salariofinal = salario * horas;
      print('Su sueldo es de $salariofinal pesos');
    }
  }
  else if( horas < 27 && horas >= 1 && acta < 2)
  {
    if(acta < 2)
    {
      salariofinal = salario * horas;
      print('Usted trabajó menos de 27 horas se le levantará un acta administrativa');
      print('Su sueldo es de $salariofinal pesos');
      print('');
      acta = acta + 1;
    }
    else
    {
      print('Usted acumuló 2 actas administrativas, por lo tanto está despedido :(');
      acta = 4;
    }
  }
  else
  {
    print('No puedes ingresar 0 o menos horas trabajadas :/');
  }
  }
  print('Usted acumuló 2 actas administrativas, por lo tanto está despedido :(');

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