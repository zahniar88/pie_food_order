import 'package:flutter/material.dart';
import 'package:pie_food_order/constant.dart';


class HeaderHome extends StatelessWidget {
  const HeaderHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset("assets/images/person.png", width: 60),
          ),
          SizedBox(width: 18),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Shadam",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: whiteColor,
                ),
              ),
              Text(
                "What Pie you want to try today?",
                style: TextStyle(
                  fontSize: 14,
                  color: softPurpleColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
