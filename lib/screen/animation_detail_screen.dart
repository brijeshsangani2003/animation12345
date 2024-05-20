import 'package:flutter/material.dart';

class AnimationDetailScreen extends StatefulWidget {
  const AnimationDetailScreen({super.key});

  @override
  State<AnimationDetailScreen> createState() => _AnimationDetailScreenState();
}

class _AnimationDetailScreenState extends State<AnimationDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Detail Screen'),
        ),
        body: Column(
          children: [
            Hero(
              tag: 'background',
              child: Image.asset('assets/images/mount.jpg'),
            ),
          ],
        ));
  }
}
