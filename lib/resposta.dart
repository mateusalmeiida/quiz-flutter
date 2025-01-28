import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<OutlinedBorder>(LinearBorder()),
          backgroundColor: WidgetStateProperty.all<Color>(Colors.teal[300]!),
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
          textStyle:
              WidgetStateProperty.all<TextStyle>(TextStyle(fontSize: 20)),
        ),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
