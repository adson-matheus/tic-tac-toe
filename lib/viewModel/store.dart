import 'package:tic_tac_toe/viewModel/jogo_da_velha.dart';
import 'package:tic_tac_toe/viewModel/snapshot.dart';

class Store {
  SnapShot backup = JogoDaVelha.instance.createSnapshot();
  static Store instance = Store();

  void makeBackup(){
    instance.backup = JogoDaVelha.instance.createSnapshot();
  }

  void undo(){
    Store.instance.backup.restore();
    
  }
  
}