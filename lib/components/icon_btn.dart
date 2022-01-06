import 'package:flutter/material.dart';
import 'package:flutter_playground/constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {Key? key,
      required this.label,
      required this.icon,
      required this.passValue})
      : super(key: key);
  final String label;
  final Icon icon;
  final VoidCallback passValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RawMaterialButton(
          child: icon,
          onPressed: passValue,
          constraints: BoxConstraints.tightFor(width: 60, height: 60),
          shape: CircleBorder(),
          fillColor: Colors.white,
          elevation: 6,
        ),
        const SizedBox(height: 10),
        Text(label, style: kLabelTextStyle)
      ],
    );
  }
}
