import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String pontuacao;

  const Resultado({required this.pontuacao, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Parabéns!',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
            Text(
              'Você fez $pontuacao pontos',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
          ]),
    );
  }
}
