import 'package:flutter/material.dart';

import '../../../common/constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
            'TOKOTO',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: defaultPrimaryColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 20),
          child: Text(text!.toUpperCase(),
              style: TextStyle(
                fontSize: 20,
                color: textColor,
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Image.asset(
            image!,
          ),
        ),
      ],
    );
  }
}
