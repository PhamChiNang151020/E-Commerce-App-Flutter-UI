import 'package:ecommerce_app/screen/auth/OTP/OtpScreen.dart';
import 'package:ecommerce_app/widget/DefaultButton.dart';
import 'package:ecommerce_app/widget/FormError.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../widget/CustomSuffixIcon.dart';

class FormComplete extends StatefulWidget {
  const FormComplete({Key? key}) : super(key: key);

  @override
  State<FormComplete> createState() => _FormCompleteState();
}

class _FormCompleteState extends State<FormComplete> {
  final _formkey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;
  String? phone;
  String? address;
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
          buildFirstNameFormField(),
          SizedBox(height: 20),
          buildLastNameFormField(),
          SizedBox(height: 20),
          buildPhoneFormField(),
          SizedBox(height: 20),
          buildAddressFormField(),
          SizedBox(height: 20),
          FormError(errors: errors),
          SizedBox(height: 20),
          DefaultButton(
              text: 'Continue'.toUpperCase(),
              press: () {
                if (_formkey.currentState!.validate()) {
                  _formkey.currentState!.save();
                  // KeyboardUtil.hideKeyboard(context);
                  print('Chuyển OTP');
                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              }),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        labelStyle: styleLable(),
        hintStyle: styleHint(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: 'assets/icon/location.png'),
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phone = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone number",
        hintText: "Enter your phone number",
        labelStyle: styleLable(),
        hintStyle: styleHint(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: 'assets/icon/phone.png'),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "First name",
        hintText: "Enter your first name",
        labelStyle: styleLable(),
        hintStyle: styleHint(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: 'assets/icon/account.png'),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Last name",
        hintText: "Enter your last name",
        labelStyle: styleLable(),
        hintStyle: styleHint(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: 'assets/icon/account.png'),
      ),
    );
  }

  TextStyle styleHint() {
    return TextStyle(
      fontSize: sizeText,
      color: textColor,
    );
  }

  TextStyle styleLable() {
    return TextStyle(
      fontSize: sizeTitle,
      color: textColor,
    );
  }
}
