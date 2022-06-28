import 'package:ecommerce_app/common/constants.dart';
import 'package:ecommerce_app/screen/auth/signin/SignInScreen.dart';
import 'package:flutter/material.dart';

import '../../../../widget/DefaultButton.dart';

class FormOTP extends StatefulWidget {
  const FormOTP({Key? key}) : super(key: key);

  @override
  State<FormOTP> createState() => _FormOTPState();
}

class _FormOTPState extends State<FormOTP> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 65,
                child: TextFormField(
                  onSaved: (pin1) {},
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: TextStyle(color: Colors.black, fontSize: sizeTitle),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: otpInputDecoration,
                ),
              ),
              SizedBox(
                width: 65,
                child: TextFormField(
                  onSaved: (pin2) {},
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: TextStyle(color: Colors.black, fontSize: sizeTitle),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: otpInputDecoration,
                ),
              ),
              SizedBox(
                width: 65,
                child: TextFormField(
                  onSaved: (pin3) {},
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: TextStyle(color: Colors.black, fontSize: sizeTitle),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: otpInputDecoration,
                ),
              ),
              SizedBox(
                width: 65,
                child: TextFormField(
                  onSaved: (pin4) {},
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: TextStyle(color: Colors.black, fontSize: sizeTitle),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: otpInputDecoration,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          DefaultButton(
            press: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
            text: 'continue'.toUpperCase(),
          ),
        ],
      ),
    );
  }
}
