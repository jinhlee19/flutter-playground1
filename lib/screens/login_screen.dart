import 'package:flutter/material.dart';
import 'package:flutter_playground/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade800,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Comany Name',
                style: kDefault,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
