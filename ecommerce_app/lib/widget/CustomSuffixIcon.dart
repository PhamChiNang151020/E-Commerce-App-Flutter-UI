import 'package:ecommerce_app/common/constants.dart';
import 'package:ecommerce_app/common/sizeConfig.dart';
import 'package:flutter/material.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key,
    this.icon,
  }) : super(key: key);

  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
      child: Image.asset(
        icon!,
        height: getProportionateScreenHeight(22),
        width: getProportionateScreenWidth(22),
        color: textColor,
      ),
    );
  }
}
