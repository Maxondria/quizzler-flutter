import 'package:quizzler/models/questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(qn: 'Some cats are actually allergic to humans', ans: true),
    Question(
        qn: 'You can lead a cow down stairs but not up stairs.', ans: false),
    Question(
        qn: 'Approximately one quarter of human bones are in the feet.',
        ans: true),
    Question(qn: 'A slug\'s blood is green.', ans: true),
    Question(
        qn: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', ans: true),
    Question(qn: 'It is illegal to pee in the Ocean in Portugal.', ans: true),
    Question(
        qn: 'No piece of square dry paper can be folded in half more than 7 times.',
        ans: false),
    Question(
        qn: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        ans: true),
    Question(
        qn: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        ans: false),
    Question(
        qn: 'The total surface area of two human lungs is approximately 70 square metres.',
        ans: true),
    Question(qn: 'Google was originally called \"Backrub\".', ans: true),
    Question(
        qn: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        ans: true),
    Question(
        qn: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        ans: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() => _questionNumber == _questionBank.length - 1;

  int get currentQn => _questionNumber;

  void resetQuiz() {
    _questionNumber = 0;
  }

  List<Question> get questions => this._questionBank;

  String getQuestionText() => this._questionBank[_questionNumber].questionText;

  bool getQuestionAnswer() =>
      this._questionBank[_questionNumber].questionAnswer;
}
