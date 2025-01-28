import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;

  final List<Map<String, Object>> _questionario = const [
    {
      'pergunta': 'Qual a sua cor favorita?',
      'respostas': ['Azul', 'Verde', 'Vermelho', 'Amarelo'],
    },
    {
      'pergunta': 'Qual o seu animal favorito?',
      'respostas': ['Cachorro', 'Gato', 'Coelho', 'Vaca']
    },
    {
      'pergunta': 'Qual o seu filme favorito?',
      'respostas': [
        'Interestelar',
        'Vingadores',
        'Guerra nas estrelas',
        'Superman'
      ],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _questionario.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            titleTextStyle: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            title: Text(
              'Quiz',
            ),
            backgroundColor: Colors.teal[300],
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  temPerguntaSelecionada: temPerguntaSelecionada,
                  questionario: _questionario,
                  perguntaSelecionada: _perguntaSelecionada,
                  responder: _responder,
                )
              : Resultado()),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
