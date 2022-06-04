import 'package:flutter/material.dart';
import 'package:firstapp/models/course.dart';
import 'package:firstapp/screens/home/widget/category_title.dart';
import 'package:firstapp/screens/home/widget/course_item.dart';

class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCourses();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top of the week', 'view all'),
          Container(
              height: 300,
              child: ListView.separated(
                padding: EdgeInsets.all(25),
                scrollDirection: Axis.horizontal,
                itemCount: coursesList.length,
                itemBuilder: (context, index) => CourseItem(coursesList[index]),
                separatorBuilder: (BuildContext context, index) =>
                    SizedBox(width: 15),
              ))
        ],
      ),
    );
  }
}
