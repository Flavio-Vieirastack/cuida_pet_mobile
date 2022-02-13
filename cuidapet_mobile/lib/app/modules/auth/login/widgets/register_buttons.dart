import 'package:flutter/material.dart';

class RegisterButtons extends StatelessWidget {
  const RegisterButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: <Widget>[
        Container(
          width: 163,
          height: 40,
          color: Colors.blue,
        ),
        Container(
          width: 163,
          height: 40,
          color: Colors.orange,
        ),
        Container(
          width: 163,
          height: 40,
          color: Colors.green,
        ),
      ],
    );
  }
}
