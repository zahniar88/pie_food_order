import 'package:flutter/material.dart';
import 'package:pie_food_order/constant.dart';
import 'package:pie_food_order/models/food.dart';


class CardFood extends StatelessWidget {
  const CardFood({
    Key? key,
    required this.index,
    required this.food,
  }) : super(key: key);

  final int index;
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 223,
      margin: EdgeInsets.only(left: index > 0 ? 12 : defaultPadding),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: double.infinity,
              height: 136,
              child: Stack(
                children: [
                  Image.asset(food.image),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 86,
                      height: 25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: whiteColor.withOpacity(0.75),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        "${food.estimate} Min",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            food.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: blackColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 16,
                color: orangeColor,
              ),
              SizedBox(width: 2),
              Text(
                food.rating.toString(),
                style: TextStyle(
                  color: orangeColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
