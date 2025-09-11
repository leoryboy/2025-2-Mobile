import 'dart:io';

void main() {
  
  stdout.write('Digite o salário mensal: R\$ ');
  double salario = double.parse(stdin.readLineSync()!); // Converte a entrada para double

  double imposto = 0.0; // Inicializa a variável do imposto

  // Verifica a faixa salarial e calcula o imposto
  if (salario <= 1903.98) {
    imposto = 0.0; // Isento
  } else if (salario <= 2826.65) {
    imposto = salario * 0.075; // 7,5%
  } else if (salario <= 3751.05) {
    imposto = salario * 0.15; // 15%
  } else if (salario <= 4664.68) {
    imposto = salario * 0.225; // 22,5%
  } else {
    imposto = salario * 0.275; // 27,5%
  }
  
  print('Imposto a pagar: R\$ ${imposto.toStringAsFixed(2)}'); // Exibe o valor do imposto, formatado com 2 casas decimais
}
