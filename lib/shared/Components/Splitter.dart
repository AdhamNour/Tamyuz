// ignore_for_file: prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

class Spliter extends StatelessWidget {
  final String spliterString;
  const Spliter({Key? key, required this.spliterString}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 3,
              color: Colors.black38,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              spliterString,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: Container(
              height: 3,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}
