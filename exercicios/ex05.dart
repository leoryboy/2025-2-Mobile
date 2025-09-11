import 'dart:io'; 

void main() {

  stdout.write('Digite o nome de usuário: '); //stdout.write para não quebra a linha
  String? usuario = stdin.readLineSync(); // Lê o nome de usuário


  stdout.write('Digite a senha: '); //stdout.write para não quebra a linha
  String? senha = stdin.readLineSync(); // Lê a senha

  if (usuario == 'admin' && senha == '1234') {
    // Se o usuário for 'admin' e a senha '1234', acesso é concedido
    print('Acesso concedido');
  } else {
    // Caso contrário, acesso é negado
    print('Acesso negado');
  }
}
