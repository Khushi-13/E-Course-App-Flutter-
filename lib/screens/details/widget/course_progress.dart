import 'package:firstapp/constants/color.dart';
import 'package:firstapp/models/module.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'course_module.dart';

class CourseProgress extends StatelessWidget {
  final modulesList = Module.generateModules();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'The progress',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20, color: kFont),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/grid.png',
                    width: 25,
                  ),
                  SizedBox(width: 15),
                  Image.asset(
                    'assets/icons/list.png',
                    width: 25,
                  )
                ],
              )
            ],
          ),
          ...modulesList.map((e) => CourseModule(e)).toList()
        ],
      ),
    );
  }
}
