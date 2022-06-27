import 'package:ecommerce_app/screen/auth/completeAccount/components/FormComplete.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants.dart';

class BodyComplete extends StatelessWidget {
  const BodyComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Complete Account',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  'Complete your detals or continue with social media',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                FormComplete(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
