import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;

  final List<Map<String, Object>> _questionario = const [
    {
      'pergunta': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto': 'Azul', 'nota': 10},
        {'texto': 'Verde', 'nota': 8},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Amarelo', 'nota': 2},
      ],
    },
    {
      'pergunta': 'Qual o seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'nota': 10},
        {'texto': 'Gato', 'nota': 8},
        {'texto': 'Coelho', 'nota': 5},
        {'texto': 'Vaca', 'nota': 9},
      ]
    },
    {
      'pergunta': 'Qual o seu filme favorito?',
      'respostas': [
        {'texto': 'Interestelar', 'nota': 10},
        {'texto': 'Vingadores', 'nota': 8},
        {'texto': 'Guerra nas estrelas', 'nota': 5},
        {'texto': 'Superman', 'nota': 5},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _questionario.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
              : Resultado(
                  reiniciarQuestionario: _reiniciarQuestionario,
                  pontuacao: _pontuacaoTotal.toString(),
                )),
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
