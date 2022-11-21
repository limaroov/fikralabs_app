import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import "./intro_screens/intro_page1.dart";
import "./intro_screens/intro_page2.dart";
import "./intro_screens/intro_page3.dart";

import 'auth_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = index == 2;
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.5),
            child: Container(
              margin: const EdgeInsets.all(100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                  ),
                  !onLastPage
                      ? Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: () {
                              _controller.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text("Next"),
                          ),
                        )
                      : Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const AuthPage();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text("Done"),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
