import 'dart:io';

void main() {
  // Solicita o valor da compra
  print("Digite o valor da compra:");
  String? entrada = stdin.readLineSync();

  // Converte a entrada para número decimal
  double valorCompra = double.parse(entrada!);

  // Verifica se tem direito a desconto
  if (valorCompra > 100) { // Verificar se o valor é maior que R$100,00
    double valorFinal = valorCompra * 0.9; // Se for, aplica 10% de desconto | valor final = valor * 0.9
    print("Valor original: R\$ ${valorCompra.toStringAsFixed(2)}");
    print("Valor com desconto: R\$ ${valorFinal.toStringAsFixed(2)}");
  } else {
    print("Valor da compra: R\$ ${valorCompra.toStringAsFixed(2)}");
    print("Sem desconto aplicado.");
  }
}
