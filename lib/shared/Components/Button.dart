// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function() onPress;
  final Color primaryColor, secondayColor;
  const Button(
      {Key? key,
      required this.text,
      required this.onPress,
      required this.primaryColor,
      required this.secondayColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
          onPressed: onPress,
          child:
              Text(text, style: TextStyle(color: secondayColor, fontSize: 24)),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
              minimumSize:
                  MaterialStateProperty.all<Size>(const Size.fromHeight(50)))),
    );
  }
}
