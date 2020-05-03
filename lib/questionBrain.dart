import 'question.dart';

class QuestionList {
  int _questionNumber = 0;
  List<Question> _questionList = [
    Question("return from Foreign"),
    Question("Suffereing from Fever"),
    Question("Suffereing with Cold"),
    Question("Suffering with Cough"),
    Question("Breathing Problem"),
  ];

  void nextQuestionNumber() {
    if (_questionNumber < _questionList.length - 1) _questionNumber++;
  }

  String getQuestionText() {
    return _questionList[_questionNumber].questionText;
  }
}
