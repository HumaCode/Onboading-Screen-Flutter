import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: const Text(
              'Write title page',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: 'Write more description text',
            image: Image.asset(
              'images/splash1.png',
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              'Write title page',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: 'Write more description text',
            image: Image.asset(
              'images/splash2.png',
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              'Write title page',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: 'Write more description text',
            image: Image.asset(
              'images/splash3.png',
              height: 400,
              width: 400,
            ),
          )
        ],
        onDone: () {
          Navigator.pushNamed(context, "home");
        },
        onSkip: () {
          Navigator.pushNamed(context, "home");
        },
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xff6c63ff),
          ),
        ),
        next: const Icon(
          Icons.arrow_forward,
          color: Color(0xff6c63ff),
        ),
        done: const Text(
          'Done',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xff6c63ff),
          ),
        ),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            color: Colors.black,
            activeColor: const Color(0xff6c63ff),
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            )),
      ),
    );
  }
}
