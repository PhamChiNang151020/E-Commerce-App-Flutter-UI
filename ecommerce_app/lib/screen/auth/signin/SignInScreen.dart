import 'package:ecommerce_app/common/theme.dart';
import 'package:flutter/material.dart';

import 'components/BodySignIn.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Sign In',
      //     style: TextStyle(fontSize: 30, color: Colors.black),
      //   ),
      // ),
      body: BodySignIn(),
    );
  }
}
