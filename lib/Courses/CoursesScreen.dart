// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:tamuz_application/Courses/CourseList.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);
  static const String routeName = "/CoursesName";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تمييز'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.blue,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.blue,
            child: CourseList(),
          ),
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.red,
          ),
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.green,
          ),
        ],
      )),
    );
  }
}
