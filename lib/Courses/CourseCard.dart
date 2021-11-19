// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tamuz_application/Courses/SingleCourseScreen/SingleCourseScreen.dart';
import 'package:tamuz_application/Models/Course.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  const CourseCard({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ClipRRect(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(SingleCourseScreen.routeName, arguments: course);
            },
            child: SizedBox(
              width: 300,
              height: 670,
              child: GridTile(
                child: CachedNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1603302576837-37561b2e2302?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=joshua-woroniecki-lzh3hPtJz9c-unsplash.jpg&w=640',
                  progressIndicatorBuilder: (ctx, s, downloadProgress) {
                    return const Center(child: CircularProgressIndicator());
                  },
                  fit: BoxFit.cover,
                ),
                footer: Container(
                  color: Colors.white,
                  height: 82,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [Text(course.title), Text('10\$')],
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
                    ),
                  ),
                ),
              ),
            ),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        elevation: 1,
        margin: const EdgeInsets.all(0),
      ),
    );
  }
}
