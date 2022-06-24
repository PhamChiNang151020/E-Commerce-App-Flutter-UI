import 'package:flutter/material.dart';

import '../../common/constant.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Text(
            'TOKOTO',
            style: TextStyle(
              fontSize: 35,
              fontFamily: 'Kanit',
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Kanit',
            fontSize: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Image.asset(
            image,
          ),
        ),
      ],
    );
  }
}
