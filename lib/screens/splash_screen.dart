import 'package:flutter/material.dart';
import 'package:pie_food_order/constant.dart';
import 'package:pie_food_order/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/splash_screen.png"),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: double.infinity,
              height: size.height * 0.36,
              padding: EdgeInsets.only(
                left: 42,
                right: 42,
                top: 50,
                bottom: 40,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  Text(
                    "PieLove Anetto",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Let's taste the Pie Cake made\nby Chef Bimo Semesta",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(height: 50),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                    },
                    color: orangeColor,
                    elevation: 0,
                    minWidth: double.infinity,
                    height: 55,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Let’s Order",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
