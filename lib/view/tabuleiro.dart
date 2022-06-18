import 'package:flutter/material.dart';

import 'button.dart';

class Tabuleiro extends StatefulWidget {
  const Tabuleiro({Key? key}) : super(key: key);

  @override
  State<Tabuleiro> createState() => _TabuleiroState();
}

class _TabuleiroState extends State<Tabuleiro> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: const <Widget>[
        StyledButton(posicao:0),
        StyledButton(posicao:1),
        StyledButton(posicao:2),
        StyledButton(posicao:3),
        StyledButton(posicao:4),
        StyledButton(posicao:5),
        StyledButton(posicao:6),
        StyledButton(posicao:7),
        StyledButton(posicao:8),
      ],
    );
  }
}