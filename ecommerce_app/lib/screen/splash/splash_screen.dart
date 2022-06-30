import 'package:flutter/material.dart';


import '../../common/sizeConfig.dart';
import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash_screen";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
