import 'package:flutter/material.dart';
import 'package:flutter_playground/constants.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({Key? key, required this.pageTitle}) : super(key: key);
  final String pageTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
