import 'dart:io'; // Importa a biblioteca para entrada de dados pelo terminal

void main() {

  stdout.write('Digite a primeira nota: '); 
  String? input1 = stdin.readLineSync(); 
  double nota1 = double.parse(input1!); // Converte a primeira nota para double

  // Solicita a segunda nota do aluno
  stdout.write('Digite a segunda nota: ');
  String? input2 = stdin.readLineSync();
  double nota2 = double.parse(input2!); // Converte a segunda nota para double

  // Calcula a média das duas notas
  double media = (nota1 + nota2) / 2;

  // Exibe a média calculada
  print('Média do aluno: $media');

  
  if (media >= 7) { 
    print('Situação: Aprovado');
  } else if (media >= 4) { 
    print('Situação: Recuperação');
  } else { 
    print('Situação: Reprovado');
  }
}
