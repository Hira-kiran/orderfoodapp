// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'ThirdPage.dart';

class SecondPage extends StatelessWidget {
  final pageDecoration = PageDecoration(
      titleTextStyle: const PageDecoration().titleTextStyle.copyWith(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
      bodyTextStyle:
          const PageDecoration().bodyTextStyle.copyWith(color: Colors.grey));
  List<PageViewModel> getpages() {
    return [
      PageViewModel(
        image: const SizedBox(
          height: 270,
          width: 270,
          child: CircleAvatar(
              backgroundImage: AssetImage("images/fajita pizza.png")),
        ),
        title: "Delicious Pizza",
        body: "Perfect at any time of the day and tastes great hot or cold",
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: const SizedBox(
          height: 270,
          width: 270,
          child: CircleAvatar(
              backgroundImage: AssetImage("images/chicken burger.webp")),
        ),
        title: "Delicious Burger",
        body: "The best burgers are like life messy and topped with bacon",
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: const SizedBox(
          height: 270,
          width: 270,
          child:
              CircleAvatar(backgroundImage: AssetImage("images/uramaki.webp")),
        ),
        title: "Delicious Soshi",
        body: "This is how we roll wake up little sushi",
        decoration: pageDecoration,
      ),
    ];
  }

  SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        dotsDecorator: const DotsDecorator(
          activeColor: Colors.orange,
        ),
        pages: getpages(),
        done: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ThirdPage()));
          },
          child: const Text(
            "Done",
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
        onDone: () {},
        next: const Text(
          "Next",
          style: TextStyle(
              color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
