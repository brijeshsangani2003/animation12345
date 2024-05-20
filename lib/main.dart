import 'package:animation12345/screen/animation_screen.dart';
import 'package:animation12345/screen/swipecard.dart';
import 'package:animation12345/screen/share_pdf.dart';
import 'package:flutter/material.dart';

import 'screen/explicit_animation.dart';
import 'screen/implicit_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SharePDFScreen(),
    );
  }
}

///card swiper package j pub.dev ma nathi etle hve aa screen open nai thai(swipecard_screen)
