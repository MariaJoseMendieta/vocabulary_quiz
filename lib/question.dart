//Define una clase que representa cada pregunta del quiz
class Question {
  String questionText; //Texto de la pregunta
  bool questionAnswer; //Respuesta correcta
  Question({
    required this.questionText,
    required this.questionAnswer,
  }); //Constructor con parámetros obligatorios
}
