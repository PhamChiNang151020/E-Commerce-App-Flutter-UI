import 'package:ecommerce_app/screen/Home/components/SectionTitle.dart';
import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../model/Product.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: 'Popular Product', press: () {}),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length,
                  (index) => ProductCart(product: demoProducts[index]))
            ],
          ),
        )
      ],
    );
  }
}

class ProductCart extends StatelessWidget {
  const ProductCart({
    Key? key,
    this.width = 160,
    this.aspectRetion = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetion;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Hình
              Container(
                height: 140,
                // width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(product.images[0]),
                ),
              ),
              SizedBox(
                height: 35,
                child: Text(
                  product.title,
                  style: TextStyle(
                    fontSize: sizeText - 3,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ ${product.price}",
                    style: TextStyle(
                      color: defaultPrimaryColor,
                      fontSize: sizeText,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/icon/heart.png",
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),

              //Title
              //Giá
            ],
          ),
        ),
      ),
    );
  }
}
