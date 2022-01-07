import 'package:flutter/material.dart';
import 'package:flutter_playground/constants.dart';

void main() => runApp(StoryBoard());

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
                  child: Icon(
                    Icons.arrow_left,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  '대시보드',
                  style: kTitleTextStyle,
                ),
                CircleAvatar(
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
        body: FairyTale(),
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
  int dokkiNumber = 1;
  // Todo 1 비어있는 리스트를 만들어줌으로써 넣을 수 있게 함.
  List<String> questions = ['이 금도끼가 니도끼냐', '은도끼가 니도끼냐', '쇠도끼가 니도끼냐'];
  List<Icon> AnswerChecker = [];
  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/dokki$dokkiNumber.jpg'),
            SizedBox(
              height: 40,
            ),
            Text(
              questions[questionNumber],
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
                        setState(() {
                          questionNumber++;
                          dokkiNumber++;
                          print(questionNumber);
                        });
                      },
                      child: Text(
                        '네',
                        style: kLabelTextStyleW,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: TextButton(
                      onPressed: () {
                        questionNumber++;
                        print(questionNumber);
                      },
                      child: Text(
                        '아니오',
                        style: kButtonTextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
