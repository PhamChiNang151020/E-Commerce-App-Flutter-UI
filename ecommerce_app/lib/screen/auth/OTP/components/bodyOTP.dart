import 'package:ecommerce_app/common/constants.dart';
import 'package:ecommerce_app/screen/auth/OTP/components/FormOTP.dart';
import 'package:flutter/material.dart';

class BodyOTPScreen extends StatefulWidget {
  const BodyOTPScreen({Key? key}) : super(key: key);

  @override
  State<BodyOTPScreen> createState() => _BodyOTPScreenState();
}

class _BodyOTPScreenState extends State<BodyOTPScreen> {
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
                SizedBox(height: 50),
                Text(
                  'OTP Verification',
                  style: TextStyle(
                    fontSize: sizeTitle,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'We sent your code to (+84) 899 ** ** 86',
                  style: TextStyle(
                    fontSize: sizeText,
                  ),
                ),
                Timer(),
                SizedBox(height: 20),
                FormOTP(),
                SizedBox(height: 20),
                TextButton(
                    onPressed: () {
                      print('Resend');
                    },
                    child: Text(
                      'Resend OTP code',
                      style: TextStyle(
                        fontSize: sizeText,
                        color: textColor,
                      ),
                    )),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row Timer() {
    return Row(
      children: [
        Text(
          'This code will expired in ',
          style: TextStyle(
            fontSize: sizeText,
          ),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (context, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(
              color: defaultPrimaryColor,
              fontSize: sizeText,
            ),
          ),
        )
      ],
    );
  }
}
