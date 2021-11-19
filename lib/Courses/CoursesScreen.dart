// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tamuz_application/Courses/CourseList.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);
  static const String routeName = "/CoursesName";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تمييز'),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.blue,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              child: Row(
                children: [
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: 'البحث',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        focusedBorder: InputBorder.none
                                ),
                  )),
                  ClipRRect(
                    child: Container(
                      child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.search)),
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(7),
                  )
                ],
              ),
              height: 75,
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  CourseList(),
                  CourseList(),
                  CourseList(),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
