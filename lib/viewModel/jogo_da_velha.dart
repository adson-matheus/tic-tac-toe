import 'package:flutter/material.dart';

class JogoDaVelha extends ChangeNotifier {
  static JogoDaVelha instance = JogoDaVelha();
  int vez = 0;
  List<String> valores = ['', '', '', '', '', '', '', '', ''];
  List<bool> marcado = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  void marcar(int posicao) {
    if (instance.marcado[posicao] == false) {
      //marca no tabuleiro e verifica se ganhou
      instance.vez == 0
          ? instance.valores[posicao] = 'X'
          : instance.valores[posicao] = 'O';
      verificaSeGanhou(instance.valores, instance.vez)
          ? print('ganhou') //pausa a execucao aqui
          : print('');

      // muda a vez do jogador
      instance.vez = instance.vez == 0 ? 1 : 0;

      // aquela posicao do tabuleiro foi marcada
      instance.marcado[posicao] = true;
      verificaSeAcabou()
          ? print("acabou") //pausa a execucao aqui
          : print("não acabou");
      notifyListeners();
    }
  }

  bool verificaSeAcabou() {
    final bool acabou = instance.marcado.every((elemento) => elemento == true);
    return acabou;
  }
}

bool verificaSeGanhou(List<String> valores, vez) {
  final linhasVencedoras = <List>[
    [valores[0], valores[1], valores[2]],
    [valores[3], valores[4], valores[5]],
    [valores[6], valores[7], valores[8]],
    [valores[0], valores[3], valores[6]],
    [valores[1], valores[4], valores[7]],
    [valores[2], valores[5], valores[8]],
    [valores[0], valores[4], valores[8]],
    [valores[2], valores[4], valores[6]],
  ];
  for (var linha in linhasVencedoras) {
    final ganhou = vez == 0
        ? linha.every((elemento) => elemento == 'X')
        : linha.every((elemento) => elemento == 'O');

    if (ganhou) {
      return true;
    }
  }
  return false;
}
