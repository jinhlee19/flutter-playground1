import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_playground/screens/dashboard_screen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: Container(
            child: TextButton(
              child: Text(
                '시작하기 \u{1f60e}',
                style: kDefault,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DashboardScreen();
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
