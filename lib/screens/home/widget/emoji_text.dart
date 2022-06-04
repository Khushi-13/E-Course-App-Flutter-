import 'package:firstapp/constants/color.dart';

import 'package:flutter/material.dart';

class EmojiText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      child: RichText(
        text: TextSpan(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextSpan(
                  text: 'Let\s boost your\nbrain power',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 26, color: kFont)),
              TextSpan(text: '✨', style: TextStyle(fontSize: 26))
            ]),
      ),
    );
  }
}
