import 'package:app/common/constant.dart';
import 'package:flutter/material.dart';

import '../../common/constant.dart';
import 'splashContent.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final String welcome = "Welcome to TOKOTO";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(top: 30)),
              Expanded(
                  flex: 3,
                  child: PageView(
                    children: [
                      SplashContent(
                          text: welcome, image: 'assets/images/splash1.png'),
                      SplashContent(
                          text: welcome, image: 'assets/images/splash2.png'),
                      SplashContent(
                          text: welcome, image: 'assets/images/splash3.png'),
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  color: bgColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'SKIP',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Kanit',
                                  fontWeight: FontWeight.bold,
                                  color: titleColor,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'NEXT',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Kanit',
                                  fontWeight: FontWeight.bold,
                                  color: titleColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
