import 'package:flutter/material.dart';

import '../../../common/constants.dart';

class BTN_Top extends StatelessWidget {
  const BTN_Top(
      {Key? key,
      required this.image,
      required this.numOfitem,
      required this.press})
      : super(key: key);

  final String image;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              color: defaultPrimaryLightColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              image,
              width: 30,
              height: 30,
            ),
          ),
          if (numOfitem != 0)
            Positioned(
              right: 0,
              child: Container(
                height: 17,
                width: 17,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: TextStyle(
                      fontSize: 13,
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
