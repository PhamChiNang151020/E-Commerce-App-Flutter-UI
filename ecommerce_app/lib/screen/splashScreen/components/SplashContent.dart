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
        SizedBox(height: 10),
        Text(
          'MP Ecommerce',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: defaultPrimaryColor,
          ),
        ),
        Text(text!.toUpperCase(),
            style: TextStyle(
              fontSize: 20,
              color: textColor,
            )),
        Padding(
          padding: const EdgeInsets.all(40),
          child: Image.asset(
            image!,
          ),
        ),
      ],
    );
  }
}
