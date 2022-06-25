import 'package:ecommerce_app/common/constants.dart';
import 'package:ecommerce_app/widget/DefaultButton.dart';
import 'package:flutter/material.dart';

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
                SizedBox(height: 70),
                Text(
                  'Welcome to\nMy App',
                  style: TextStyle(
                    fontSize: 40,
                    color: defaultPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  // textAlign: TextAlign.center,
                ),
                SizedBox(height: 70),
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
                DefaultButton(
                  text: 'Sign In'.toUpperCase(),
                  press: () {},
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/icon/fb.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
