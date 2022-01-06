import 'package:flutter/material.dart';
import 'package:flutter_playground/constants.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Piano());

class Piano extends StatelessWidget {
  // 보이드 함수의 점점점.
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('sound$soundNumber.mp3');
  }

  //위젯을 데이터타입으로 사용하는 부분 주의
  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          child: TextButton(
            onPressed: () {
              playSound(soundNumber);
            },
            child: Text(''),
          ),
          height: 90,
          decoration: BoxDecoration(
            border: Border.all(width: 1.0),
            color: color,
          ),
          // width: double.infinity,
        ),
      ),
    );
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
                children: <Widget>[
                  // Expanded(
                  //   child: Container(
                  //     child: TextButton(
                  //       onPressed: () {
                  //         final player = AudioCache();
                  //         player.play('sound1.mp3');
                  //       },
                  //       child: Text('click'),
                  //     ),
                  //     color: Colors.redAccent,
                  //     height: 90,
                  //     // width: double.infinity,
                  //   ),
                  // ),
                  buildKey(color: Colors.white, soundNumber: 1),
                  buildKey(color: Colors.white, soundNumber: 2),
                  buildKey(color: Colors.white, soundNumber: 3),
                  buildKey(color: Colors.white, soundNumber: 4),
                  buildKey(color: Colors.white, soundNumber: 5),
                  buildKey(color: Colors.white, soundNumber: 6),
                  buildKey(color: Colors.white, soundNumber: 7),
                  buildKey(color: Colors.white, soundNumber: 8),
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
