import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main(){
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
    int _perguntaSelecionada = 0;
    
    void _responder (){
      print('Pergunta respondida');
      
      setState(() {
        _perguntaSelecionada++;
      });
    }

  @override
  Widget build(BuildContext context){
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          title: Text('Quiz',),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(
            children: [
              Questao(perguntas[_perguntaSelecionada]),
              Resposta('Resposta 1'),
              Resposta('Resposta 2'),
              Resposta('Resposta 3'),
            ],
          ),
        )
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  
  @override
  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }

}