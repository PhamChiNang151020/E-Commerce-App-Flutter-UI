import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import 'FormForgot.dart';

class BodyForgotPassword extends StatefulWidget {
  const BodyForgotPassword({Key? key}) : super(key: key);

  @override
  State<BodyForgotPassword> createState() => _BodyForgotPasswordState();
}

class _BodyForgotPasswordState extends State<BodyForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Forgot password',
                  style: TextStyle(
                    fontSize: sizeTitle,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                'Please enter your email and we will send you a link to return to your account',
                style: TextStyle(
                  fontSize: sizeText,
                ),
              ),
              FormForgotPassword(),
            ],
          ),
        ),
      ),
    );
  }
}
