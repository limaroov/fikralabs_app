import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/avatar_1.png",
              height: 250,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                "Trade anytime anywhere !",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, height: 2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
