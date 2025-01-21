import 'package:flutter/material.dart';

void main(){
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

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
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            Text(perguntas[0], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: null, 
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: null, 
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: null, 
              child: Text('Resposta 3'),
            ),
          ],
        )
      ),
    );
  }
}