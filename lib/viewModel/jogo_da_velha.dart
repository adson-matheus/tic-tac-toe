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
      instance.vez == 0
          ? instance.valores[posicao] = 'X'
          : instance.valores[posicao] = 'O';
      instance.vez = instance.vez == 0 ? 1 : 0;
      instance.marcado[posicao] = true;
      notifyListeners();
    }
  }
}
