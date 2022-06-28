import 'dart:ui';

import 'package:ecommerce_app/common/constants.dart';
import 'package:ecommerce_app/model/Product.dart';
import 'package:ecommerce_app/screen/Home/components/PopularProduct.dart';
import 'package:flutter/material.dart';

import 'Banner.dart';
import 'Categories.dart';
import 'HomeHeader.dart';
import 'SectionTitle.dart';
import 'Spical_offer.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({Key? key}) : super(key: key);

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
                SizedBox(height: 20),
                HomeHeader(),
                SizedBox(height: 20),
                BannerDiscount(),
                SizedBox(height: 20),
                Categories(),
                SizedBox(height: 20),
                SpecialOffers(),
                SizedBox(height: 20),
                // ProductCart(),
                PopularProduct(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
