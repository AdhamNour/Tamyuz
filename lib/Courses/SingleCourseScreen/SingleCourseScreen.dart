// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tamuz_application/Models/Course.dart';

class SingleCourseScreen extends StatelessWidget {
  const SingleCourseScreen({Key? key}) : super(key: key);
  static const routeName = '/SingleCourseScreen';
  @override
  Widget build(BuildContext context) {
    final Course? course =
        ModalRoute.of(context)!.settings.arguments as Course?;
    Widget scaffoldContent = Text("undefined course, app internal error");
    if (course != null) {
      scaffoldContent = Text("course Id = ${course.id}");
    }
    return Scaffold(
      body: Center(
        child: scaffoldContent,
      ),
    );
  }
}
