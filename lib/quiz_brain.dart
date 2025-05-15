import 'package:vocabulary_quiz/question.dart';

//Clase encargada de manejar la lógica del quiz
class QuizBrain {
  int _questionNumber = 0; //Índice que indica en qué pregunta va el usuario

  //Lista de preguntas y sus respuestas correctas
  List<Question> _questionBank = [
    Question(questionText: 'Happy means sad.', questionAnswer: false),
    Question(questionText: 'Cold means not hot.', questionAnswer: true),
    Question(questionText: 'Big means small.', questionAnswer: false),
    Question(questionText: 'Fast means not slow.', questionAnswer: true),
    Question(questionText: 'Dog means a kind of animal.', questionAnswer: true),
    Question(
      questionText: 'Chair means something you wear.',
      questionAnswer: false,
    ),
    Question(questionText: 'Run means to move fast.', questionAnswer: true),
    Question(
      questionText: 'Book means a place to sleep.',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Water means something we drink.',
      questionAnswer: true,
    ),
    Question(questionText: 'Sleep means to be awake.', questionAnswer: false),
    Question(
      questionText: 'Sun means a big light in the sky.',
      questionAnswer: true,
    ),
    Question(questionText: 'Cat means a type of fruit.', questionAnswer: false),
    Question(
      questionText: 'Eat means to put food in your mouth.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'School means a place to learn.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Tired means full of energy.',
      questionAnswer: false,
    ),
    Question(questionText: 'Blue means a color.', questionAnswer: true),
    Question(questionText: 'Smile means to look angry.', questionAnswer: false),
    Question(
      questionText: 'Baby means a very young child.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Rain means water from the sky.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Shoes mean something for your hands.',
      questionAnswer: false,
    ),
  ];

  //Avanza a la siguiente pregunta si no ha llegado al final
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  //Devuelve el texto de la pregunta actual
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  //Devuelve la respuesta correcta de la pregunta actual
  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //Verifica si el usuario ha llegado al final del quiz
  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  //Reinicia el índice para volver a empezar el quiz
  void reset() {
    _questionNumber = 0;
  }
}
