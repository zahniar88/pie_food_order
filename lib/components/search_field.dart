import 'package:flutter/material.dart';
import 'package:pie_food_order/constant.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin:
          EdgeInsets.symmetric(horizontal: defaultPadding).copyWith(bottom: 30),
      padding: EdgeInsets.only(left: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: darkPurpleColor,
      ),
      child: TextField(
        style: TextStyle(
          color: lightPurpleColor,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Find your favorite Pie",
          hintStyle: TextStyle(
            color: softPurpleColor,
            fontSize: 14,
          ),
          suffixIcon: Icon(
            Icons.search_outlined,
            color: softPurpleColor,
          ),
        ),
      ),
    );
  }
}
