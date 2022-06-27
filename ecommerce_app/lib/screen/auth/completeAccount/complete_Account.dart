import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import 'components/bodyComplete.dart';

class CompleteAccountScreen extends StatelessWidget {
  static String routeName = "/complete_account";
  const CompleteAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'SignUp',
      //     style: TextStyle(color: textColor),
      //   ),
      // ),
      body: BodyComplete(),
    );
  }
}
