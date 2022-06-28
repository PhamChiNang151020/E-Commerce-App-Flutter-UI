import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import 'btn_top.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SearchField(),
        BTN_Top(
            image: 'assets/icon/notification.png',
            numOfitem: 6,
            press: () {}),
        BTN_Top(
            image: 'assets/icon/shopcart.png',
            numOfitem: 5,
            press: () {}),
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.55,
        decoration: BoxDecoration(
          color: defaultPrimaryLightColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Search',
            prefixIcon: Icon(
              Icons.search,
              color: defaultPrimaryColor,
            ),
          ),
        ));
  }
}
