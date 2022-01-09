import 'package:flutter/material.dart';
import 'package:flutter_playground/constants.dart';
import 'package:flutter_playground/screens/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(const StoryBoard());

class StoryBoard extends StatelessWidget {
  const StoryBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_left,
                    color: Colors.black54,
                  ),
                ),
                const Text(
                  '금도끼 은도끼',
                  style: kTitleTextStyle,
                ),
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/avatar.png'),
                ),
              ],
            ),
          ),
          titleTextStyle: kTitleTextStyle,
          toolbarTextStyle: kLabelTextStyle,
          backgroundColor: Colors.grey.shade300,
          shadowColor: Colors.transparent,
        ),
        body: const FairyTale(),
      ),
    );
  }
}

class FairyTale extends StatefulWidget {
  const FairyTale({Key? key}) : super(key: key);
  // List<String> Questions = ['이 도끼가 니 도끼냐?', '그럼 이 도끼가 니 도끼냐?'];
  @override
  _FairyTaleState createState() => _FairyTaleState();
}

class _FairyTaleState extends State<FairyTale> {
  QuizBrain quizBrain = QuizBrain();
  List<Icon> answerChecker = [];
  int dokkiNumber = 1;
  // int questionNumber = 0;
  // List<String> questions = ['이 금도끼가 니도끼냐', '은도끼가 니도끼냐', '쇠도끼가 니도끼냐'];
  // List<bool> answers = [false, false, true];
  void addCheckers(bool userAnswer) {
    bool correctAnswer = quizBrain.getQuestionAnswer();
    // if (userAnswer == correctAnswer) {
    //   answerChecker.add(
    //     const Icon(Icons.check),
    //   );
    // } else {
    //   answerChecker.add(
    //     const Icon(Icons.close),
    //   );
    // }

    setState(() {
      if (quizBrain.isFinished()) {
        Alert(
          context: context,
          title: 'Finished',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        quizBrain.reset();
        answerChecker = [];
      } else {
        if (correctAnswer == userAnswer) {
          answerChecker.add(const Icon(Icons.check));
        } else {
          answerChecker.add(const Icon(Icons.close));
        }
      }
      quizBrain.nextQuestion();
      dokkiNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/dokki$dokkiNumber.jpg'),
            const SizedBox(
              height: 40,
            ),
            Text(
              quizBrain.getQuestionText(),
              style: kTitleTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1), color: Colors.black),
                    child: TextButton(
                      // Todo yes button
                      onPressed: () {
                        // if에서 ==는 비교연산자**
                        // 1번질문은 falue값이 if문에서 true를 리턴한다.
                        // bool correctAnswer = quizBrain
                        //     .questionBank[questionNumber].questionAnswer;
                        // if (correctAnswer == true) {
                        //   print('right answer');
                        // } else {
                        //   print('wrong answer');
                        // }
                        setState(() {
                          addCheckers(true);
                        });
                      }, //
                      child: const Text(
                        '네',
                        style: kLabelTextStyleW,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: TextButton(
                      onPressed: () {
                        // // 답을 위에서 가져옴.
                        // bool correctAnswer = quizBrain
                        //     .questionBank[questionNumber].questionAnswer;
                        //
                        // if (correctAnswer == false) {
                        //   print('right answer');
                        // } else {
                        //   print('wrong answer');
                        // }
                        setState(() {
                          // questionNumber++;
                          // dokkiNumber++;
                          addCheckers(false);
                        });
                      },
                      child: const Text(
                        '아니오',
                        style: kButtonTextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: answerChecker,
            )
          ],
        ),
      ),
    );
  }
}
