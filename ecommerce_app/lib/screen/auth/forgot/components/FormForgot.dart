import 'package:ecommerce_app/widget/DefaultButton.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../helps/KeyBoardUtil.dart';
import '../../../../widget/CustomSuffixIcon.dart';
import '../../../../widget/FormError.dart';
import '../../../HomePage.dart';

class FormForgotPassword extends StatefulWidget {
  const FormForgotPassword({Key? key}) : super(key: key);

  @override
  State<FormForgotPassword> createState() => _FormForgotPasswordState();
}

class _FormForgotPasswordState extends State<FormForgotPassword> {
  final _formkey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? email;
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
          FormError(errors: errors),
          SizedBox(height: 20),
          DefaultButton(
            text: 'Continue'.toUpperCase(),
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
        labelStyle: TextStyle(
          fontSize: sizeTitle,
          color: textColor,
        ),
        hintStyle: TextStyle(
          fontSize: sizeText,
          color: textColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: 'assets/icon/mail.png'),
      ),
    );
  }
}
