import 'package:flutter/material.dart';
import 'package:tic_tac_toe/viewModel/snapshot.dart';
import 'package:tic_tac_toe/viewModel/store.dart';

class JogoDaVelha extends ChangeNotifier {
  static JogoDaVelha instance = JogoDaVelha();
  int vez = 0;
  bool venceu = false;
  bool terminou = false;

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

  SnapShot createSnapshot(){
    return SnapShot(vez: instance.vez, venceu: instance.venceu, terminou: instance.terminou, marcado: instance.marcado, valores: instance.valores);
  }
  String printa() {
  
    if (!instance.venceu) {
      if (instance.verificaSeAcabou()) {
        return 'Empate!';
      }
      else if (instance.vez == 0) {
        return 'Vez do jogador 1';
      }
      else if (instance.vez == 1) {
        return 'Vez do jogador 0';
      }
    } else {
      return 'Vencedor: Jogador ${instance.vez}';
    }
    return '';
  }

  void marcar(int posicao) {
    if (!instance.terminou && !instance.verificaSeAcabou()) {
      if (instance.marcado[posicao] == false) {
        instance.vez == 0
            ? instance.valores[posicao] = 'X'
            : instance.valores[posicao] = 'O';

        instance.vez = instance.vez == 0 ? 1 : 0;
        instance.marcado[posicao] = true;
        Store.instance.makeBackup();
        vencedor();
        notifyListeners();
      }
    }
  }

  bool verificaSeAcabou() {
    final bool acabou = instance.marcado.every((elemento) => elemento == true);
    return acabou;
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
        instance.terminou = true;
        break;
      }
    }
  }
}
