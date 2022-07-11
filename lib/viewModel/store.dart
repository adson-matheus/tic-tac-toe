import 'package:tic_tac_toe/viewModel/jogo_da_velha.dart';
import 'package:tic_tac_toe/viewModel/snapshot.dart';

class Store {
  static Store instance = Store();
  SnapShot? backup;

  void makeBackup() {
    instance.backup = JogoDaVelha.instance.createSnapshot();
  }

  void undo() {
    if (instance.backup != null) {
      instance.backup!.restore();
      print(Store.instance.backup!.valores);
    }
  }
}
