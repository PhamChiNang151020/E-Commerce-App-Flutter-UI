import 'package:ecommerce_app/common/constants.dart';
import 'package:ecommerce_app/screen/auth/signin/SignInScreen.dart';
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
      {"text": "Welcome to MP", "image": "assets/images/splash_1.png"},
      {"text": "Welcome to MP", "image": "assets/images/splash_2.png"},
      {"text": "Welcome to MP", "image": "assets/images/splash_3.png"},
    ];
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            // height: MediaQuery.of(context).size.height * 0.8,
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
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    SizedBox(height: 20),
                    DefaultButton(
                      text: 'Continue'.toUpperCase(),
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
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
