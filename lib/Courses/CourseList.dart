// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tamuz_application/Courses/CourseCard.dart';
import 'package:tamuz_application/Models/Course.dart';

class CourseList extends StatelessWidget {
  final List<Course> courses;
  final String title;
  const CourseList({Key? key, required this.courses, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Color.fromARGB(200, 44, 62, 80),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, i) {
                return CourseCard(course: courses[i]);
              },
              itemCount: courses.length,
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
            ),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      height: 300,
    );
  }
}
