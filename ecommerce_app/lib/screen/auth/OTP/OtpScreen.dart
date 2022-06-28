import 'package:ecommerce_app/common/constants.dart';
import 'package:ecommerce_app/screen/auth/OTP/components/bodyOTP.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = '/OTP';
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OTP',
          style: TextStyle(
            color: defaultPrimaryColor,
          ),
        ),
      ),
      body: BodyOTPScreen(),
    );
  }
}
