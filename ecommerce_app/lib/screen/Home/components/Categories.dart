import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icon/IconGame.png", "text": "Flash Deal"},
      {"icon": "assets/icon/IconFlash.png", "text": "Bill"},
      {"icon": "assets/icon/IconBill.png", "text": "Game"},
      {"icon": "assets/icon/IconGift.png", "text": "Daily Gift"},
      {"icon": "assets/icon/IconGame.png", "text": "More"},
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        categories.length,
        (index) => CategoryCard(
          icon: categories[index]["icon"],
          text: categories[index]["text"],
          press: () {},
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: (55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all((15)),
              height: (55),
              width: (55),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
