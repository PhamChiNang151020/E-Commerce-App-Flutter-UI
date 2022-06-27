import 'package:ecommerce_app/screen/HomePage.dart';
import 'package:ecommerce_app/screen/auth/ForgotScreen.dart';
import 'package:ecommerce_app/screen/auth/SignInScreen.dart';
import 'package:ecommerce_app/screen/auth/SignUpScreen.dart';
import 'package:ecommerce_app/screen/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  HomePageScreen.routeName: (context) => HomePageScreen(),
};
