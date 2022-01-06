import 'package:flutter/material.dart';
import 'package:flutter_playground/constants.dart';
import 'dart:math';

class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                Text(
                  '주사위',
                  style: kTitleTextStyleW,
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
          backgroundColor: Colors.black38,
          shadowColor: Colors.transparent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'text',
              style: TextStyle(color: Colors.black38),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Dicee(
                    numberOfDice: 1,
                  ),
                  Dicee(
                    numberOfDice: 2,
                  ),
                  Dicee(
                    numberOfDice: 3,
                  ),
                  Dicee(
                    numberOfDice: 4,
                  ),
                  Dicee(
                    numberOfDice: 5,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'ROLL IT!!',
                    style: kLabelTextStyleW,
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black38),
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
            ),
          ],
        ),
      ),
    );
  }
}

class Dicee extends StatefulWidget {
  const Dicee({Key? key, required this.numberOfDice}) : super(key: key);
  final int numberOfDice;

  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int diceNumber1 = 1;
  int diceNumber2 = 2;
  int diceNumber3 = 3;
  int diceNumber4 = 4;
  int diceNumber5 = 5;
  int numberOfDice = 1;
  void randomDice() {
    diceNumber1 = Random().nextInt(6) + 1;
    diceNumber2 = Random().nextInt(6) + 1;
    diceNumber3 = Random().nextInt(6) + 1;
    diceNumber4 = Random().nextInt(6) + 1;
    diceNumber5 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {
            randomDice();
          });
          print('dice pressed');
        },
        child: Image.asset('assets/dice$diceNumber1.png'),
      ),
    );
  }
}
