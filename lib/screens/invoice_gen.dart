import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/constants.dart';

void main() => runApp(const InvoiceGen());

class InvoiceGen extends StatelessWidget {
  const InvoiceGen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          // color: const Color(0xffB9DA84),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffB9DA84),
                            border: Border.all(width: 2, color: Colors.black87),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.west_rounded,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Order List',
                            style: kOrderTitleStyle,
                          ),
                          Text('Fruit Plannet', style: kOrderSubtitleStyle),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.search_rounded,
                              color: Colors.black87, size: 30),
                          // SizedBox(width: 4),
                          // Icon(Icons.tune_rounded, color: Colors.black87, size: 30)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    '사과',
                                    style: kButtonTextStyle,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '아침에 사과',
                                    style: kLabelTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // color: const Color(0xffB9DA84),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xff75C7C9),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.remove_rounded,
                                size: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffffffff),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text('Box', style: kButtonTextStyle),
                            )),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // color: const Color(0xffB9DA84),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff75C7C9),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.add_rounded,
                                size: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    '포도',
                                    style: kButtonTextStyle,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '포도당',
                                    style: kLabelTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // color: const Color(0xffB9DA84),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xff75C7C9),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.remove_rounded,
                                size: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffffffff),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text('Box', style: kButtonTextStyle),
                            )),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // color: const Color(0xffB9DA84),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff75C7C9),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.add_rounded,
                                size: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    '포도',
                                    style: kButtonTextStyle,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '포도당',
                                    style: kLabelTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // color: const Color(0xffB9DA84),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xff75C7C9),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.remove_rounded,
                                size: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffffffff),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text('Box', style: kButtonTextStyle),
                            )),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // color: const Color(0xffB9DA84),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff75C7C9),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.add_rounded,
                                size: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    '포도',
                                    style: kButtonTextStyle,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '포도당',
                                    style: kLabelTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // color: const Color(0xffB9DA84),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xff75C7C9),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.remove_rounded,
                                size: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffffffff),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text('Box', style: kButtonTextStyle),
                            )),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // color: const Color(0xffB9DA84),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff75C7C9),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.add_rounded,
                                size: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    '포도',
                                    style: kButtonTextStyle,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '포도당',
                                    style: kLabelTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // color: const Color(0xffB9DA84),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xff75C7C9),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.remove_rounded,
                                size: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffffffff),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text('Box', style: kButtonTextStyle),
                            )),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // color: const Color(0xffB9DA84),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff75C7C9),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.add_rounded,
                                size: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    '포도',
                                    style: kButtonTextStyle,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '포도당',
                                    style: kLabelTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // color: const Color(0xffB9DA84),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xff75C7C9),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.remove_rounded,
                                size: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffffffff),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text('Box', style: kButtonTextStyle),
                            )),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // color: const Color(0xffB9DA84),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff75C7C9),
                              border:
                                  Border.all(width: 2, color: Colors.black87),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.add_rounded,
                                size: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
