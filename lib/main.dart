import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main(){
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
    int _perguntaSelecionada = 0;
    
    void _responder (){
      setState(() {
        _perguntaSelecionada++;
      });
    }

  @override
  Widget build(BuildContext context){
    final List<Map<String,Object>> questionario = [
      {
        'pergunta': 'Qual a sua cor favorita?',
        'respostas': ['Azul','Verde','Vermelho','Amarelo'],
      },
      {
        'pergunta': 'Qual o seu animal favorito?',
        'respostas': ['Cachorro','Gato','Coelho','Vaca']
      },
      {
        'pergunta': 'Qual o seu filme favorito?',
        'respostas': ['Interestelar','Vingadores','Guerra nas estrelas','Superman'],
      }
    ];

    List<String> respostas = questionario[_perguntaSelecionada].cast()['respostas'];
    List<Widget> componentes = respostas.map((t) => Resposta(t, _responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          title: Text('Quiz',),
          backgroundColor: Colors.teal[300],
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(
            children: [
              Questao(questionario[_perguntaSelecionada]['pergunta'].toString()),
              ...componentes,
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