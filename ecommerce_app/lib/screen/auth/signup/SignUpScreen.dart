import 'package:ecommerce_app/common/constants.dart';
import 'package:flutter/material.dart';

import 'components/BodySignUp.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodySignUp(),
    );
  }
}
