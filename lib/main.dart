import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

// Creamos un objeto de la clase QuizBrain, que contiene la lista de preguntas y las funciones para avanzar, reiniciar y verificar respuestas
QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(const MyApp());
}

//Define la estructura principal de la app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'True/False Vocabulary Quiz',
            style: TextStyle(fontFamily: 'Tuffy', fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFb9dcfe),
        ),
        backgroundColor: Color(0xFF8cc7fe),
        body: SafeArea(
          child: Padding(padding: EdgeInsets.all(10.0), child: Quizzler()),
        ),
      ),
    );
  }
}

class Quizzler extends StatefulWidget {
  const Quizzler({super.key});

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

// Esta clase guarda y actualiza el estado del quiz: controla qué pregunta se muestra, verifica respuestas y muestra resultados.
class _QuizzlerState extends State<Quizzler> {
  //Lista que almacena íconos de respuestas correctas o incorrectas
  List<Icon> scoreKeeper = [];
  //Función que se llama cuando el usuario responde
  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (quizBrain.isFinished() == true) {
        //Muestra una alerta cuando termina el quiz
        Alert(
          context: context,
          title: "FINISHED",
          desc: "You have reached the end of the quiz",
        ).show();
        //Reinicia el quiz
        quizBrain.reset();
        scoreKeeper = [];
      } else {
        //Verifica si la respuesta es correcta y agrega un ícono
        if (quizBrain.getQuestionAnswer() == userPickedAnswer) {
          scoreKeeper.add(Icon(Icons.check));
        } else {
          scoreKeeper.add(Icon(Icons.close));
        }
      }
      //Avanza a la siguiente pregunta
      quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Sección de la pregunta
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, fontFamily: 'Tuffy'),
              ),
            ),
          ),
        ),
        //Íconos de puntuación en formato que se ajusta al espacio
        Wrap(children: scoreKeeper),
        //Botones de respuesta True y False
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    checkAnswer(true);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF71c979),
                  ),
                  child: Text(
                    'True',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Tuffy',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    checkAnswer(false);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFda8c88),
                  ),
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Tuffy',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
