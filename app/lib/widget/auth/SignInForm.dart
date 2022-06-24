import 'package:app/common/constant.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        child: Column(
          children: [
            TextInput(
              lable: 'Email',
              hint: 'Enter your email',
              icon: 'assets/icon/mail.png',
              click: '',
            ),
            TextInput(
              lable: 'Password',
              hint: 'Enter your password',
              icon: 'assets/icon/lock.png',
              click: '',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Remember me',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    color: textColor,
                    fontSize: 17,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      color: titleColor,
                      fontSize: 17,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: textColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Sign In'.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: bgColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.lable,
    required this.hint,
    required this.icon,
    required this.click,
  }) : super(key: key);
  final String lable, hint, icon, click;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: lable,
            hintText: hint,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: titleColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: titleColor),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 15,
            ),
            labelStyle: TextStyle(
              fontFamily: 'Kanit',
              fontSize: 20,
              color: textColor,
            ),
            hintStyle: TextStyle(
              fontFamily: 'Kanit',
              fontSize: 20,
              color: textColor,
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: IconButton(
                onPressed: () {
                  click;
                },
                icon: Image.asset(
                  icon,
                  height: 30,
                  width: 30,
                ),
              ),
            )
            // suffixIcon: Icon(Icons.mail),
            ),
      ),
    );
  }
}
