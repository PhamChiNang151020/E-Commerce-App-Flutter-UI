import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String?> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index]!)),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        Image.asset(
          'assets/icon/error.png',
          height: 20,
          width: 20,
          color: Colors.red,
        ),
        SizedBox(
          width: 14,
        ),
        Text(
          error,
          style: TextStyle(color: Colors.red, fontSize: 16),
        ),
      ],
    );
  }
}
