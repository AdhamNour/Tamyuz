// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tamuz_application/Models/Course.dart';

class CourseMiniDescription extends StatelessWidget {
  const CourseMiniDescription({
    Key? key,
    required this.course,
  }) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              course.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              course.type != 'free' ? '10\$' : 'مجانية',
              style: const TextStyle(
                  color: Colors.orange, fontWeight: FontWeight.bold),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        Row(
          children: [
            Chip(
              label: Text('${course.duration} ساعات'),
              backgroundColor: Colors.white,
              avatar: const Icon(
                Icons.access_time,
                color: Colors.orange,
              ),
            ),
            Chip(
                label: Text('${course.lessons.length.toString()} درس'),
                avatar: const FaIcon(
                  FontAwesomeIcons.youtube,
                  color: Colors.orange,
                ),
                backgroundColor: Colors.white),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
