import 'package:ecommerce_app/screen/Home/HomePage.dart';
import 'package:ecommerce_app/screen/auth/forgot/ForgotScreen.dart';
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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String _email = 'admin@gmail.com';
  String _password = 'Admin12345@';

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
          Remember_Forgot(context),
          FormError(errors: errors),
          SizedBox(height: 15),
          Btn_SignIn(context)
        ],
      ),
    );
  }

  DefaultButton Btn_SignIn(BuildContext context) {
    return DefaultButton(
      text: 'SIGN IN',
      press: () {
        if (_formkey.currentState!.validate()) {
          if (emailController.text == _email &&
              passwordController.text == _password) {
            _formkey.currentState!.save();
            KeyboardUtil.hideKeyboard(context);
            Navigator.pushNamed(context, HomePageScreen.routeName);
          } else {
            addError(error: IncorrectInfomation);
            removeError(error: kEmailNullError);
            removeError(error: kInvalidEmailError);
            removeError(error: kPassNullError);
            removeError(error: kShortPassError);
            return null;
          }
        }
      },
    );
  }

  Row Remember_Forgot(BuildContext context) {
    return Row(
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
                fontSize: sizeText - 3,
              ),
            ),
          ],
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
            },
            child: Text(
              'Forgot password',
              style: TextStyle(
                color: textColor,
                fontSize: sizeText - 3,
              ),
            ))
      ],
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      obscureText: _obscureText,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
          removeError(error: IncorrectInfomation);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
          removeError(error: IncorrectInfomation);
        } else if (value.isNotEmpty && value.length >= 8) {
          removeError(error: kPassNullError);
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
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
          removeError(error: IncorrectInfomation);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
          removeError(error: IncorrectInfomation);
        } else if (value.isNotEmpty && emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kEmailNullError);
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
      fontSize: sizeText - 2,
      color: textColor,
    );
  }

  TextStyle styleLabel() {
    return TextStyle(
      fontSize: sizeTitle - 4,
      color: textColor,
    );
  }
}
