import 'dart:io';

void main() {

  print("Digite seu peso em kg:");
  String? entradaPeso = stdin.readLineSync();
  double peso = double.parse(entradaPeso!); // Converte a primeira para double


  print("Digite sua altura em metros (ex: 1.75):");
  String? entradaAltura = stdin.readLineSync();
  double altura = double.parse(entradaAltura!); // Converte a primeira para double

  // Calcula o IMC
  double imc = peso / (altura * altura);

  String classificacao;
  if (imc < 18.5) {
    classificacao = "Abaixo do peso";
  } else if (imc < 25) {
    classificacao = "Peso normal";
  } else if (imc < 30) {
    classificacao = "Sobrepeso";
  } else if (imc < 35) {
    classificacao = "Obesidade grau 1";
  } else if (imc < 40) {
    classificacao = "Obesidade grau 2";
  } else {
    classificacao = "Obesidade grau 3";
  }

  print("Seu IMC é ${imc.toStringAsFixed(2)} - $classificacao");
}
