import 'package:flutter/material.dart';

class JogoDaVelha extends ChangeNotifier {
  static JogoDaVelha instance = JogoDaVelha();
  int vez = 0;
  bool venceu = false;

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
      instance.vez == 0
          ? instance.valores[posicao] = 'X'
          : instance.valores[posicao] = 'O';
      vencedor();
      instance.vez = instance.vez == 0 ? 1 : 0;
      instance.marcado[posicao] = true;
      
      notifyListeners();
    }
  }

  void vencedor() {
    const posicoesVencedoras = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 4, 8],
      [2, 4, 6],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ];

    for (List<int> linha in posicoesVencedoras) {
      if ((instance.valores[linha[0]] == instance.valores[linha[1]]) &&
          (instance.valores[linha[0]] == instance.valores[linha[2]] &&
              instance.valores[linha[0]] != '')) {
        instance.venceu = true;
        break;
      }
    }
  }
}
