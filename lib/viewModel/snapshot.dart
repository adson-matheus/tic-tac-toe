import 'jogo_da_velha.dart';

class SnapShot {
  int vez;
  bool venceu;
  bool terminou;
  List<String> valores;
  List<bool> marcado;
  SnapShot({
    required this.vez,
    required this.venceu,
    required this.terminou,
    required this.marcado,
    required this.valores
  });

  void restore(){
    JogoDaVelha.instance.vez = vez;
    JogoDaVelha.instance.venceu = venceu;
    JogoDaVelha.instance.terminou = terminou;
    JogoDaVelha.instance.valores = valores;
    JogoDaVelha.instance.marcado = marcado;
  }
}