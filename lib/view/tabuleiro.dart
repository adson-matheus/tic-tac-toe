import 'package:flutter/material.dart';
import 'package:tic_tac_toe/viewModel/jogo_da_velha.dart';

import 'button.dart';

class Tabuleiro extends StatefulWidget {
  const Tabuleiro({Key? key}) : super(key: key);

  @override
  State<Tabuleiro> createState() => _TabuleiroState();
}

class _TabuleiroState extends State<Tabuleiro> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: JogoDaVelha.instance,
      builder: (context, child) {
        return GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            const Text(''),
            Center(
              child: Text(
                  JogoDaVelha.instance.venceu == false
                      ? JogoDaVelha.instance.vez == 0
                          ? 'Vez do jogador 0'
                          : 'Vez do jogador 1'
                      : 'Vencedor: Jogador ${JogoDaVelha.instance.vez}',
                  style: const TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const Text(''),
            const StyledButton(posicao: 0),
            const StyledButton(posicao: 1),
            const StyledButton(posicao: 2),
            const StyledButton(posicao: 3),
            const StyledButton(posicao: 4),
            const StyledButton(posicao: 5),
            const StyledButton(posicao: 6),
            const StyledButton(posicao: 7),
            const StyledButton(posicao: 8),
          ],
        );
      },
    );
  }
}
