import 'package:firstapp/constants/color.dart';
import 'package:firstapp/models/course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  CustomAppBar(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(course.imageUrl, fit: BoxFit.fill),
                ),
              ),
              Container(
                height: 20,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: Container(
              height: 50,
              width: 110,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: kAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {},
                child: Text('START COURSE'),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).padding.top,
              left: 20,
              child: Container(
                height: 50,
                width: 50,
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 22, 22, 22).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    iconSize: 25,
                    onPressed: () => Navigator.of(context).pop()),
              )),
          Positioned(
              top: MediaQuery.of(context).padding.top,
              right: 20,
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 22, 22, 22).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15)),
                  child: IconButton(
                      icon: Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                      iconSize: 25,
                      onPressed: () {})))
        ],
      ),
    );
  }
}
