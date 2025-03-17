import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'first_page.dart';

class SplashScreenState extends StatefulWidget {
  const SplashScreenState({super.key});

  @override
  State<SplashScreenState> createState() => __SplashScreenStateState();
}

class __SplashScreenStateState extends State<SplashScreenState> {
  @override
  void initState() {
    super.initState();

    // Future.delayed(const Duration(seconds: 10), () {
    //   Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) =>
    //               const MyHomePage(title: 'Flutter Demo Home Page')));
    //   //   Navigator.pushReplacementNamed(context,  MyHomePage(title: 'Flutter Demo Home Page'));
    // });
  }

  @override
  Widget build(BuildContext context) {
    void onFinished() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const MyHomePage(title: 'Flutter Demo Home Page')));
    }

    // late AnimationController _animationController;
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          children: [
            Lottie.asset('assets/animation.json', height: 300, width: 300),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30.0,
                fontFamily: 'Bobbers',
                fontWeight: FontWeight.bold,
              ),
              child: AnimatedTextKit(
                // pause: Duration(microseconds: 5),
                // controller: controler,
                animatedTexts: [
                  TypewriterAnimatedText('Discipline is the best tool'),
                ],
                onFinished: onFinished,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
