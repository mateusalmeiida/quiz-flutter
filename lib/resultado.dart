import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String pontuacao;
  final void Function() reiniciarQuestionario;

  const Resultado(
      {required this.reiniciarQuestionario,
      required this.pontuacao,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      WidgetStateProperty.all<Color>(Colors.teal[300]!),
                  textStyle: WidgetStateProperty.all<TextStyle>(
                      TextStyle(fontSize: 20)),
                ),
                onPressed: reiniciarQuestionario,
                child: Text('Reiniciar')),
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
