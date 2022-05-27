import 'question.dart';

class Questionbank {
  int _currentQuestion = 0;
  List<Question> _bank = [
    Question("Question 1", true),
    Question("Question 2", true),
    Question("Question 3", true),
    Question("Question 4", false),
    Question("Question 5", true),
    Question("Question 6", false),
    Question("Question 7", true),
    Question("Question 8", true),
    Question("Question 9", false),
    Question("Question 10", false),
  ];

  void nextQuestion() {
    if (_currentQuestion < _bank.length - 1) {
      _currentQuestion++;
    }
  }

  bool getAnswer() {
    return _bank[_currentQuestion].answer;
  }

  String getQuestion() {
    return _bank[_currentQuestion].question;
  }

  bool ended() {
    if (_currentQuestion >= _bank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _currentQuestion = 0;
  }
}
