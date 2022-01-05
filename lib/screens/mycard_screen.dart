import 'package:flutter/material.dart';
import 'package:flutter_playground/constants.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.png'),
                  backgroundColor: Colors.blueAccent,
                  radius: 80,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '한잔해야지...?',
                  style: kLabelTextStyleW,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '이진혁',
                  style: kTitleTextStyleW,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 20.0,
                    width: 150,
                    child: Divider(
                      color: Colors.blue.shade50,
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.blue.shade700),
                    title: Text(
                      '82 10-8697-2046',
                      style: kLabelTextStyle,
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                  child: ListTile(
                    leading:
                        Icon(Icons.mail_outline, color: Colors.blue.shade700),
                    title: Text(
                      'jinhlee27@gmail.com',
                      style: kLabelTextStyle,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      '돌아가기',
                      style: kLabelTextStyleW,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
