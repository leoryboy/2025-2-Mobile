import 'dart:io';

void main() {
  
  stdout.write('Digite o valor do primeiro lado: ');
  double lado1 = double.parse(stdin.readLineSync()!);


  stdout.write('Digite o valor do segundo lado: ');
  double lado2 = double.parse(stdin.readLineSync()!);


  stdout.write('Digite o valor do terceiro lado: ');
  double lado3 = double.parse(stdin.readLineSync()!);

  // Verifica se os lados podem formar um triângulo
  if (lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1) {
    // Se todos os lados forem iguais, é Equilátero
    if (lado1 == lado2 && lado2 == lado3) {
      print('O triângulo é Equilátero.');
    }
    // Se apenas dois lados forem iguais, é Isósceles
    else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
      print('O triângulo é Isósceles.');
    }
    // Se todos os lados forem diferentes, é Escaleno
    else {
      print('O triângulo é Escaleno.');
    }
  } else {
    // Caso os lados não formem um triângulo válido
    print('Os valores informados não formam um triângulo.');
  }
}
