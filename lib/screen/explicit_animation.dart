import 'dart:math';

import 'package:flutter/material.dart';

class explicit_animation extends StatefulWidget {
  const explicit_animation({Key? key}) : super(key: key);

  @override
  State<explicit_animation> createState() => _explicit_animationState();
}

class _explicit_animationState extends State<explicit_animation>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<Offset>? animation;
  Animation? coloranimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = Tween<Offset>(end: Offset(1, 0), begin: Offset(0, 0))
        .animate(animationController!.view);
    coloranimation = ColorTween(end: Colors.red, begin: Colors.black)
        .animate(animationController!.view);
    animationController!.repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // AnimatedBuilder(
            //   animation: animationController!.view,
            //   builder: (context, child) => Transform.rotate(
            //     angle: animationController!.value * 6 * pi,
            //     child: FlutterLogo(
            //       size: 100,
            //       duration: Duration(seconds: 2),
            //     ),
            //   ),
            // ),
            // AnimatedBuilder(
            //   animation: animationController!.view,
            //   builder: (context, child) => Transform.scale(
            //     child: FlutterLogo(
            //       size: 100,
            //     ),
            //     scale: animationController!.value,
            //   ),
            // ),
            // AnimatedBuilder(
            //   animation: animationController!.view,
            //   builder: (context, child) => SlideTransition(
            //     position: animation!,
            //     child: FlutterLogo(
            //       size: 100,
            //     ),
            //   ),
            // ),
            AnimatedBuilder(
              animation: animationController!.view,
              builder: (context, child) => Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: coloranimation!.value,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
