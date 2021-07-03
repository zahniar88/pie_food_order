import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pie_food_order/constant.dart';
import 'package:pie_food_order/models/category.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({
    Key? key,
    required this.category,
    required this.index,
    required this.active,
  }) : super(key: key);

  final Category category;
  final int index;
  final int active;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 90,
      margin: EdgeInsets.only(left: (index > 0) ? 25 : defaultPadding),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: (index == active) ? orangeColor : whiteColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(
              category.icon,
              color: (active == index) ? whiteColor : darkPurpleColor,
            ),
          ),
          Text(
            category.title,
            style: TextStyle(
              fontSize: 12,
              color: (index == active) ? blackColor : softPurpleColor,
            ),
          ),
        ],
      ),
    );
  }
}
