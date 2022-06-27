import 'package:ecommerce_app/screen/auth/completeAccount/complete_Account.dart';
import 'package:ecommerce_app/widget/DefaultButton.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../widget/CustomSuffixIcon.dart';
import '../../../../widget/FormError.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({Key? key}) : super(key: key);

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  final _formkey = GlobalKey<FormState>();
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  String? email;
  String? password;
  String? conform_password;
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
          SizedBox(height: 20),
          buildEmailFormField(),
          SizedBox(height: 20),
          buildPasswordFormField(),
          SizedBox(height: 20),
          buildRePasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: 30),
          DefaultButton(
            text: 'Continue'.toUpperCase(),
            press: () {
              if (_formkey.currentState!.validate()) {
                _formkey.currentState!.save();
                // KeyboardUtil.hideKeyboard(context);
                print('CHuyển');
                Navigator.pushNamed(context, CompleteAccountScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: _obscureText1,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
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
                _obscureText1 = !_obscureText1;
              });
            },
            icon: Image.asset(
              _obscureText1
                  ? 'assets/icon/lock.png'
                  : 'assets/icon/un_lock.png',
              width: 25,
              height: 25,
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildRePasswordFormField() {
    return TextFormField(
      obscureText: _obscureText2,
      onSaved: (newValue) => conform_password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == conform_password) {
          removeError(error: kMatchPassError);
        }
        conform_password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re - enter your password",
        labelStyle: styleLabel(),
        hintStyle: styleHint(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {
              setState(() {
                _obscureText2 = !_obscureText2;
              });
            },
            icon: Image.asset(
              _obscureText2
                  ? 'assets/icon/lock.png'
                  : 'assets/icon/un_lock.png',
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
