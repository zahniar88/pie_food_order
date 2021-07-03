import 'package:flutter/material.dart';
import 'package:pie_food_order/constant.dart';


class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: defaultPadding,
        left: defaultPadding,
        bottom: 12,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: blackColor,
        ),
      ),
    );
  }
}
