//implicit animation ma on tap() ni jarur pade.

import 'package:flutter/material.dart';

class implicit_animation extends StatefulWidget {
  const implicit_animation({Key? key}) : super(key: key);

  @override
  State<implicit_animation> createState() => _implicit_animationState();
}

class _implicit_animationState extends State<implicit_animation> {
  double height = 100;
  double width = 100;
  Color clr = Colors.red;
  double leftpadding = 20;
  double bottompadding = 30;
  Color clr1 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                //jo height 100 hoy to 200 thai jay and jo tme container 200 nu hoy to 100 thai jay.
                height = height == 200 ? 100 : 200;
                width = width == 200 ? 100 : 200;
                clr = clr == Colors.blue ? Colors.red : Colors.blue;
                leftpadding = leftpadding == 50 ? 30 : 50;
                bottompadding = bottompadding == 50 ? 30 : 50;
                clr1 = clr1 == Colors.orange ? Colors.black : Colors.orange;
              });
            },
            child: AnimatedPadding(
              padding:
                  EdgeInsets.only(left: leftpadding, bottom: bottompadding),
              curve: Curves.bounceIn,
              duration: Duration(seconds: 2),
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                curve: Curves.bounceIn,
                height: height,
                width: width,
                color: clr,
                child: Center(
                  child: Text(
                    'ABCD',
                    style: TextStyle(color: clr1, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
