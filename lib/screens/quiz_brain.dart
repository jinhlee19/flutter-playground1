class Question {
  late String questionText;
  late bool questionAnswer;

  Question(this.questionText, this.questionAnswer);
}

class QuizBrain {
  int questionNumber = 0;
  int dokkiNumber = 1;
  final List<Question> questionBank = [
    Question('이 금도끼가 니도끼냐', false),
    Question('이 은도끼가 니도끼냐', false),
    Question('이 쇠도끼가 니도끼냐', true),
  ];
  void nextQuestion() {
    questionNumber = 0;
    dokkiNumber = 1;
    if (questionNumber < questionBank.length - 1) {
      questionNumber++;
      dokkiNumber++;
    }
  }

  String getQuestionText() {
    return questionBank[questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return questionBank[questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (questionNumber >= questionBank.length - 1) {
      print("All done");
      return true;
    }
    return false;
  }

  void reset() {
    questionNumber = 0;
    dokkiNumber = 0;
  }
}
