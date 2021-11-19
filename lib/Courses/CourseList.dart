// ignore_for_file: file_names

import 'package:flutter/material.dart';
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('المساقات'),
        Flexible(
          child: ListView.builder(
            itemBuilder: (ctx, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(Courses[i].title),
              );
            },
            itemCount: Courses.length,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
