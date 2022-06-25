import 'package:ecommerce_app/common/constants.dart';
import 'package:flutter/material.dart';

import '../../../widget/DefaultButton.dart';
import 'SplashContent.dart';

class BodySplashScreen extends StatefulWidget {
  const BodySplashScreen({Key? key}) : super(key: key);

  @override
  State<BodySplashScreen> createState() => _BodySplashScreenState();
}

class _BodySplashScreenState extends State<BodySplashScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> splashData = [
      {"text": "Welcome to TOKOTO", "image": "assets/images/splash1.png"},
      {"text": "Welcome to TOKOTO", "image": "assets/images/splash2.png"},
      {"text": "Welcome to TOKOTO", "image": "assets/images/splash3.png"},
    ];
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                image: splashData[index]["image"],
                text: splashData[index]['text'],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                  ),
                  DefaultButton(
                    text: 'Continue',
                    press: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      // color: textColor,
      duration: animateDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? defaultPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
