import 'package:animation12345/screen/animation_detail_screen.dart';
import 'package:flutter/material.dart';

class HeroAnimationScreen extends StatefulWidget {
  const HeroAnimationScreen({super.key});

  @override
  State<HeroAnimationScreen> createState() => _HeroAnimationScreenState();
}

class _HeroAnimationScreenState extends State<HeroAnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Animation Screen'),
      ),
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimationDetailScreen(),
                  ));
            },
            child: Hero(
              //ahiya apne ji tag ma apu hoy aa aaj biji screen ma lakhvanu.
              tag: 'background',
              child: Image.asset(
                'assets/images/mount.jpg',
                height: 150,
                //width: 250,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
