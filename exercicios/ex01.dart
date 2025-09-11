import 'dart:io';

void main() {
  // Solicita a idade do usuário
  print("Digite sua idade:");
  String? entrada = stdin.readLineSync(); //Usamos stdin.readLineSync() para ler o valor digitado

  // Converte a entrada para número inteiro
  int idade = int.parse(entrada!); //sempre vem em formato de texto (String), precisamos converter para número (int.parse)

  // Verifica se a pessoa pode votar
  if (idade >= 16) {
    print("Você tem $idade anos e pode votar este ano!");
  } else {
    print("Você tem $idade anos e ainda não pode votar.");
  }
}
