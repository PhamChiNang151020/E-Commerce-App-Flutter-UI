import 'package:ecommerce_app/screen/Home/HomePage.dart';
import 'package:ecommerce_app/screen/auth/OTP/OtpScreen.dart';
import 'package:ecommerce_app/screen/auth/completeAccount/complete_Account.dart';
import 'package:ecommerce_app/screen/auth/forgot/ForgotScreen.dart';
import 'package:ecommerce_app/screen/auth/signin/SignInScreen.dart';
import 'package:ecommerce_app/screen/auth/signup/SignUpScreen.dart';
import 'package:ecommerce_app/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteAccountScreen.routeName: (context) => CompleteAccountScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomePageScreen.routeName: (context) => HomePageScreen(),
};
