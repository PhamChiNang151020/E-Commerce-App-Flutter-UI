import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
  const CardIcon({
    Key? key,
    required this.image,
    this.onPress,
  }) : super(key: key);

  final String? image;
  final Function? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress as void Function()?,
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          image!,
        ),
      ),
    );
  }
}
