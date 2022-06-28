import 'package:flutter/material.dart';

import '../../../common/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required this.text, required this.press})
      : super(key: key);

  final String? text;

  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text!,
            style: TextStyle(
              fontSize: sizeTitle - 5,
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              "See More",
              style: TextStyle(
                fontSize: sizeText,
                color: textColor.withOpacity(0.8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
