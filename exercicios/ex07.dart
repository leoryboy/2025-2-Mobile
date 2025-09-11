import 'dart:io';

void main() {
  double saldo = 1000.0; // Saldo inicial do caixa eletrônico

  print('=== Caixa Eletrônico ===');
  print('1 - Saldo');
  print('2 - Saque');
  print('3 - Depósito');

  stdout.write('Escolha uma opção (1 a 3): '); //stdout.write para não quebra a linha
  String? input = stdin.readLineSync(); 
  int opcao = int.tryParse(input!) ?? 0; // Converte a entrada para inteiro, se falhar usa 0 | igual ao ex06

  switch (opcao) {
    case 1: 
      print('Saldo atual: R\$ ${saldo.toStringAsFixed(2)}');
      break;

    case 2:
      stdout.write('Digite o valor do saque: ');
      String? saqueInput = stdin.readLineSync(); // Lê o valor do saque
      double saque = double.tryParse(saqueInput!) ?? 0.0; // Converte para double
      if (saque <= saldo && saque > 0) {
        saldo -= saque; // Subtrai o valor do saldo
        print('Saque realizado com sucesso!');
      } else {
        print('Saldo insuficiente ou valor inválido!');
      }
      print('Saldo atualizado: R\$ ${saldo.toStringAsFixed(2)}');
      break;

    case 3:
      stdout.write('Digite o valor do depósito: ');
      String? depositoInput = stdin.readLineSync(); // Lê o valor do depósito
      double deposito = double.tryParse(depositoInput!) ?? 0.0; // Converte para double
      if (deposito > 0) {
        saldo += deposito; // Soma o valor ao saldo
        print('Depósito realizado com sucesso!');
      } else {
        print('Valor inválido para depósito!');
      }
      print('Saldo atualizado: R\$ ${saldo.toStringAsFixed(2)}');
      break;

    default:
      print('Opção inválida');
  }
}
