import 'package:app/common/constant.dart';
import 'package:app/widget/auth/SignInForm.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 50)),
                    Text(
                      'WELCOME TO TOKOTO',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold,
                        color: titleColor,
                      ),
                    ),
                    Container(
                      height: 140,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: textColor,
                          fontFamily: 'Kanit',
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    //TẠO FORM

                    SignInForm(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
