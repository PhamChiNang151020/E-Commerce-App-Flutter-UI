import 'package:ecommerce_app/common/constants.dart';
import 'package:ecommerce_app/screen/auth/signup/SignUpScreen.dart';
import 'package:ecommerce_app/widget/DefaultButton.dart';
import 'package:flutter/material.dart';

import '../../../../widget/CartIcon.dart';
// import '../../../widget/CartIcon.dart';
// import '../../../widget/CustomSuffixIcon.dart';
import 'FormSignIn.dart';

class BodySignIn extends StatefulWidget {
  const BodySignIn({Key? key}) : super(key: key);

  @override
  State<BodySignIn> createState() => _BodySignInState();
}

class _BodySignInState extends State<BodySignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text(
                  'Welcome to\nMy App',
                  style: TextStyle(
                    fontSize: 40,
                    color: defaultPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  // textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SignInForm(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CardIcon(image: 'assets/icon/fb.png', onPress: () {}),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                      CardIcon(image: 'assets/icon/gg.png', onPress: () {}),
                    ],
                  ),
                ),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(
            fontSize: 16,
            color: textColor,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, SignUpScreen.routeName);
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 16,
                color: defaultPrimaryColor,
              ),
            )),
      ],
    );
  }
}
