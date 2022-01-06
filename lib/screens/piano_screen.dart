import 'package:flutter/material.dart';
import 'package:flutter_playground/constants.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Piano());

class Piano extends StatelessWidget {
  const Piano({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    // 함수 안에 input arguments** 넣고, 데이터 타입을 지정*.
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

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
                Icon(
                  Icons.menu,
                  color: Colors.black54,
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/penguin.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: TextButton(
                        onPressed: () {
                          final player = AudioCache();
                          player.play('sound1.mp3');
                        },
                        child: Text('click'),
                      ),
                      color: Colors.grey,
                      height: 90,
                      // width: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black87),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Back to Dashboard',
                    style: kLabelTextStyleW,
                  ),
                ),
              ],
            ), // Back to Dashboard
          ],
        ),
      ),
    );
  }
}
