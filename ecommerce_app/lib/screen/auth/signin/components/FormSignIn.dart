import 'package:ecommerce_app/screen/HomePage.dart';
import 'package:ecommerce_app/screen/auth/forgot/ForgotScreen.dart';
import 'package:ecommerce_app/screen/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../helps/KeyBoardUtil.dart';
import '../../../../widget/CustomSuffixIcon.dart';
import '../../../../widget/DefaultButton.dart';
import '../../../../widget/FormError.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formkey = GlobalKey<FormState>();
  bool _obscureText = true;
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: 30),
          buildPasswordFormField(),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: remember,
                    activeColor: defaultPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        remember = value!;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, ForgotPasswordScreen.routeName);
                  },
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                    ),
                  ))
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: 15),
          DefaultButton(
            text: 'SIGN IN',
            press: () {
              if (_formkey.currentState!.validate()) {
                _formkey.currentState!.save();
                KeyboardUtil.hideKeyboard(context);
                print('CHuyển');
                Navigator.pushNamed(context, HomePageScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: _obscureText,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        labelStyle: styleLabel(),
        hintStyle: styleHint(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            icon: Image.asset(
              _obscureText ? 'assets/icon/lock.png' : 'assets/icon/un_lock.png',
              width: 25,
              height: 25,
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          // Thêm điều kiện để đăng nhập
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        labelStyle: styleLabel(),
        hintStyle: styleHint(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: 'assets/icon/mail.png'),
      ),
    );
  }

  TextStyle styleHint() {
    return TextStyle(
      fontSize: 20,
      color: textColor,
    );
  }

  TextStyle styleLabel() {
    return TextStyle(
      fontSize: 25,
      color: textColor,
    );
  }
}
