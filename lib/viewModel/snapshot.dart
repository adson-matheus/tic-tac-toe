import 'jogo_da_velha.dart';

class SnapShot {
  JogoDaVelha jogoDaVelha;
  int vez;
  bool venceu;
  bool terminou;
  List<String> valores;
  List<bool> marcado;

  SnapShot({
    required this.jogoDaVelha,
    required this.vez,
    required this.venceu,
    required this.terminou,
    required this.marcado,
    required this.valores,
  });

  void restore() {
    jogoDaVelha.vez = vez;
    jogoDaVelha.venceu = venceu;
    jogoDaVelha.terminou = terminou;
    jogoDaVelha.valores = valores;
    jogoDaVelha.marcado = marcado;
    JogoDaVelha.instance = jogoDaVelha;
  }
}
