import 'package:flutter/material.dart';
import 'package:quiz/questao.dart';
import 'package:quiz/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> questionario;
  final int perguntaSelecionada;
  final void Function(int) responder;
  final bool temPerguntaSelecionada;

  const Questionario({
    required this.temPerguntaSelecionada,
    required this.questionario,
    required this.perguntaSelecionada,
    required this.responder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? questionario[perguntaSelecionada].cast()['respostas']
        : [];

    List<Widget> componentes = respostas.map((resp) {
      return Resposta(resp['texto'].toString(), () {
        responder(int.parse(resp['nota'].toString()));
      });
    }).toList();

    return Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          children: [
            Questao(questionario[perguntaSelecionada]['pergunta'].toString()),
            ...componentes,
          ],
        ));
  }
}
