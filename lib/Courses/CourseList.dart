// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tamuz_application/Courses/CourseCard.dart';
import 'package:tamuz_application/Models/Course.dart';

class CourseList extends StatelessWidget {
  final List<Course> Courses = [];
  CourseList({Key? key}) : super(key: key) {
    for (var i = 0; i < 10; i++) {
      Courses.add(Course(
          id: i,
          title: 'title $i',
          description: 'description $i',
          type: 'type',
          duration: '32',
          created_at: '2021-11-17T10:03:57.000000Z',
          updated_at: '2021-11-17T10:03:57.000000Z'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'المساقات',
            style: TextStyle(
                color: Color.fromARGB(200, 44, 62, 80),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, i) {
                return CourseCard(course: Courses[i]);
              },
              itemCount: Courses.length,
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
