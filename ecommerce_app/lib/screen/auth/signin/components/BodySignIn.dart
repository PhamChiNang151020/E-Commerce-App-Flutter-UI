import 'package:ecommerce_app/common/constants.dart';
import 'package:ecommerce_app/common/sizeConfig.dart';
import 'package:ecommerce_app/screen/auth/signup/SignUpScreen.dart';
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
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Welcome to MPE',
                  style: TextStyle(
                    fontSize: 40,
                    color: defaultPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  // textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: getProportionateScreenWidth(20)),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: sizeTitle,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SignInForm(),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardIcon(image: 'assets/icon/fb.png', onPress: () {}),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                    CardIcon(image: 'assets/icon/gg.png', onPress: () {}),
                  ],
                ),
                NoAccountText(),
                SizedBox(height: 20),
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
            fontSize: sizeText - 3,
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
                fontSize: sizeText - 3,
                color: defaultPrimaryColor,
              ),
            )),
      ],
    );
  }
}
