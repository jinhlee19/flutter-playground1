import 'package:flutter/material.dart';
import 'package:flutter_playground/constants.dart';

void main() => runApp(fairytale());

class fairytale extends StatelessWidget {
  const fairytale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/penguin.png'),
              Expanded(
                child: Text(
                  'question',
                  style: kTitleTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1), color: Colors.black),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '네',
                            style: kLabelTextStyleW,
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 0,
                    // ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(width: 1)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '아니오',
                            style: kButtonTextStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
