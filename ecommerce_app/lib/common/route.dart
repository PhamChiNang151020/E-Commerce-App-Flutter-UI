import 'package:ecommerce_app/screen/auth/SignInScreen.dart';
import 'package:ecommerce_app/screen/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
