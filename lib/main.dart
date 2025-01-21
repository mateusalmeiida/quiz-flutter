import 'package:flutter/material.dart';

void main(){
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  final int perguntaSelecionada = 0;

  void responder (){
    print('Pergunta respondida');
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
          margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(perguntas[perguntaSelecionada], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ElevatedButton(
                onPressed: responder, 
                child: Text('Resposta 1'),
              ),
              ElevatedButton(
                onPressed: responder, 
                child: Text('Resposta 2'),
              ),
              ElevatedButton(
                onPressed: responder, 
                child: Text('Resposta 3'),
              ),
            ],
          ),
        )
      ),
    );
  }
}