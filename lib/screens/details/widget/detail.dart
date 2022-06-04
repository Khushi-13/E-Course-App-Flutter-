import 'package:firstapp/models/course.dart';
import 'package:firstapp/screens/details/widget/course_description.dart';
import 'package:firstapp/screens/details/widget/course_progress.dart';
import 'package:firstapp/screens/details/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Course course;
  DetailPage(this.course);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course),
            CourseDescription(course),
            CourseProgress()
          ],
        ),
      ),
    );
  }
}
