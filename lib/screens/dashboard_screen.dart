import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_playground/components/app_bar.dart';
import 'package:flutter_playground/constants.dart';
import 'package:flutter_playground/screens/dice.dart';
import 'package:flutter_playground/screens/fairytale.dart';
import 'package:flutter_playground/screens/piano_screen.dart';
import 'loading_screen.dart';
import 'package:flutter_playground/components/icon_btn.dart';
import 'package:flutter_playground/screens/mycard_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

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
        body: Column(children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.white,
            ),
          ),
          Flexible(
            flex: 1,
            child: Material(
              color: Colors.grey.shade300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Ink(
                        //   decoration: const ShapeDecoration(
                        //     color: Colors.black87,
                        //     shape: CircleBorder(),
                        //   ),
                        //   child: IconButton(
                        //     onPressed: () {
                        //       Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //           builder: (context) {
                        //             return LoadingScreen();
                        //           },
                        //         ),
                        //       );
                        //     },
                        //     icon: const Icon(Icons.nature_people_outlined),
                        //     color: Colors.white,
                        //   ),
                        // ),
                        RoundIconButton(
                          icon: const Icon(Icons.auto_fix_high_outlined),
                          label: '동화책',
                          passValue: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return fairytale();
                                },
                              ),
                            );
                          },
                        ),
                        RoundIconButton(
                          icon: const Icon(Icons.casino_sharp),
                          label: '주사위',
                          passValue: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Dice();
                                },
                              ),
                            );
                          },
                        ),
                        RoundIconButton(
                          icon: const Icon(Icons.piano_outlined),
                          label: '피아노',
                          passValue: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Piano();
                                },
                              ),
                            );
                          },
                        ),
                        RoundIconButton(
                          icon: const Icon(Icons.nature_people_outlined),
                          label: '시작화면',
                          passValue: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RoundIconButton(
                          icon: const Icon(Icons.thermostat_outlined),
                          label: '오늘온도',
                          passValue: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoadingScreen();
                                },
                              ),
                            );
                          },
                        ),
                        RoundIconButton(
                          icon: const Icon(Icons.audiotrack_sharp),
                          label: '드럼킷',
                          passValue: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoadingScreen();
                                },
                              ),
                            );
                          },
                        ),
                        RoundIconButton(
                          icon: Icon(Icons.loop_sharp),
                          label: '뭐할까',
                          passValue: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoadingScreen();
                                },
                              ),
                            );
                          },
                        ),
                        RoundIconButton(
                          icon: Icon(Icons.face_sharp),
                          label: '만든이',
                          passValue: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MyCard();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
