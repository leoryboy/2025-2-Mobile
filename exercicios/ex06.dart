import 'dart:io'; 

void main() {
  // Exibe o cardápio do restaurante
  print('=== Cardápio do Restaurante ===');
  print('1 - Pizza - R\$ 25.00');
  print('2 - Hambúrguer - R\$ 15.00');
  print('3 - Salada - R\$ 12.00');
  print('4 - Sushi - R\$ 30.00');

  stdout.write('Escolha uma opção (1 a 4): ');
  String? input = stdin.readLineSync();
  int opcao = int.tryParse(input!) ?? 0; // Converte a entrada para inteiro, se falhar usa 0

  switch (opcao) {
    case 1:
      print('Você escolheu Pizza. Valor a pagar: R\$ 25.00');
      break; // Encerra este case
    case 2:
      print('Você escolheu Hambúrguer. Valor a pagar: R\$ 15.00');
      break;
    case 3:
      print('Você escolheu Salada. Valor a pagar: R\$ 12.00');
      break;
    case 4:
      print('Você escolheu Sushi. Valor a pagar: R\$ 30.00');
      break;
    default:
      // Caso o usuário digite um número fora de 1 a 4
      print('Opção inválida');
  }
}
