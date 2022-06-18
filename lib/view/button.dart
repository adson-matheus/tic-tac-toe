import 'package:flutter/material.dart';

import '../viewModel/jogo_da_velha.dart';


class StyledButton extends StatefulWidget {
  final int posicao;
  const StyledButton({Key? key, required this.posicao}) : super(key: key);

  @override
  State<StyledButton> createState() => StyledButtonState();
}

class StyledButtonState extends State<StyledButton> {

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: JogoDaVelha.instance,
      builder: (context, child) {
        return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
        ),
        onPressed: () {
          JogoDaVelha.instance.marcar(widget.posicao);
        },
        child: Text(
          JogoDaVelha.instance.valores[widget.posicao],
          style: const TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
      },
    );
  }
}
