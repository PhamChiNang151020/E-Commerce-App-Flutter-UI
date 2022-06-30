import 'package:flutter/material.dart';

const defaultPrimaryColor = Color(0xFFFF7643);
const defaultPrimaryLightColor = Color.fromARGB(255, 247, 231, 220);
const defaultGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);

const seconColor = Color(0xFF979797);
const textColor = Color(0xFF757575);

double sizeTitle = 25;
double sizeText = 18;

const animateDuration = Duration(microseconds: 200);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kRePassNullError = "Please Enter confirm your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

const String IncorrectInfomation = "Incorrect Infomation";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: textColor),
  );
}

