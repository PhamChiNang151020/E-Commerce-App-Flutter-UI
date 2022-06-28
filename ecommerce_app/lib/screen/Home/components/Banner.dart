import 'package:flutter/material.dart';

import '../../../common/constants.dart';

class BannerDiscount extends StatelessWidget {
  const BannerDiscount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 65, 82, 180)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 15, 0, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'A summer',
              style: TextStyle(
                fontSize: sizeTitle - 5,
                color: Colors.white,
              ),
            ),
            Text(
              'Cashback 20%',
              style: TextStyle(
                fontSize: sizeTitle * 1.2,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
