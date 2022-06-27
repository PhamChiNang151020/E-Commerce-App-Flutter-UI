import 'package:ecommerce_app/screen/auth/signup/components/FormSignUp.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../widget/CartIcon.dart';

class BodySignUp extends StatefulWidget {
  const BodySignUp({Key? key}) : super(key: key);

  @override
  State<BodySignUp> createState() => _BodySignUpState();
}

class _BodySignUpState extends State<BodySignUp> {
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
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Register Account',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: textColor,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Text(
                    'Complete your detals or continue with social media',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  FormSignUp(),
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
                  Text(
                    'By continuing your confirm that you agree with our Term and Condition',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
