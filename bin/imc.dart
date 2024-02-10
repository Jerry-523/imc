import 'dart:math';
import 'dart:io';

void main() {
  var head = "\t[CALCULADORA IMC]\n";  
  double imc = 0.0;
	
  print(head);
  print("\nInsira o seu peso actual: ");
  double? p = double.parse(stdin.readLineSync()!);
  print("\nInsira a sua altura: ");
  double? h = double.parse(stdin.readLineSync()!);
  imc = p / (h * h);
  String? IMC = imc.toStringAsFixed(2);
  print("\n");  
  if (imc < 16){
    print("Você está com $IMC\Kg, MUITO ABAIXO DO PESO");
  } else if (imc > 16 && imc < 17){
    print("Você está com $IMC\Kg, MAGREZA MODERADA");
  } else if (imc > 17 && imc < 18.5){
    print("Você está com $IMC\Kg, MAGREZA LEVE");
  } else if (imc > 18.5 && imc < 25){
    print("Você está com $IMC\Kg, SAUDÁVEL");
  } else if (imc > 25 && imc < 30){
    print("Você está com $IMC\Kg, SOBREPESO");
  } else if (imc > 30 && imc < 35){
    print("Você está com $IMC\Kg, OBESIDADE GRAU I");
  } else if (imc > 35 && imc < 40){
    print("Você está com $IMC\Kg, OBESIDADE GRAU II");
  } else if (imc >= 40){
    print("Você está com $IMC\Kg, OBESIDADE GRAU III");
  }
}
