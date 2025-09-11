import 'dart:io';
import 'dart:math'; // Para gerar números aleatórios

void main() {
  // Gera um número aleatório entre 1 e 100
  Random random = Random();
  int numeroSecreto = random.nextInt(100) + 1; // nextInt(100) gera de 0 a 99, por isso somamos 1

  int palpite = 0; // Inicializa a variável do palpite do usuário
  int tentativas = 0; // Contador de tentativas

  print('=== Jogo de Adivinhação ===');
  print('Tente adivinhar o número secreto entre 1 e 100!');

  // Loop até o usuário acertar o número
  while (palpite != numeroSecreto) {
    stdout.write('Digite seu palpite: ');
    palpite = int.tryParse(stdin.readLineSync()!) ?? 0; // Lê o palpite e converte para inteiro
    tentativas++; // Incrementa o contador de tentativas

    // Verifica se acertou
    if (palpite == numeroSecreto) {
      print('Parabéns! Você acertou o número em $tentativas tentativas.');
    } else {
      // Operador ternário para exibir mensagem de dica
      print(palpite > numeroSecreto ? 'Muito alto!' : 'Muito baixo!');
    }
  }
}
