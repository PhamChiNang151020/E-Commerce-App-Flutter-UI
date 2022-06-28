import 'package:ecommerce_app/screen/Home/components/BodyHome.dart';
import 'package:flutter/material.dart';

import '../../common/constants.dart';

class HomePageScreen extends StatelessWidget {
  static String routeName = "/home_page";
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHomeScreen(),
    );
  }
}
