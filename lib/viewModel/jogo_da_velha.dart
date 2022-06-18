import 'package:flutter/cupertino.dart';

class JogoDaVelha extends ChangeNotifier{
  List<String> valores = ['', '', '', '', '', '', '', '', ''];
  static JogoDaVelha instance = JogoDaVelha();
  int vez = 0;
  void marcar(int posicao){
    
    instance.vez == 0 ?  instance.valores[posicao]  = 'X' : instance.valores[posicao] = 'O';
    instance.vez = instance.vez == 0 ? 1 : 0;
    notifyListeners();
  }
}