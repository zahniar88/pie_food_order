import 'package:flutter/material.dart';
import 'package:pie_food_order/components/card_category.dart';
import 'package:pie_food_order/components/card_food.dart';
import 'package:pie_food_order/components/header_home.dart';
import 'package:pie_food_order/components/search_field.dart';
import 'package:pie_food_order/components/section_title.dart';
import 'package:pie_food_order/constant.dart';
import 'package:pie_food_order/models/category.dart';
import 'package:pie_food_order/models/food.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int categorySelected = 0;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderHome(),
              SearchField(),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: lightPurpleColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: "Categories"),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: categories.map((category) {
                          int index = categories.indexOf(category);
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                categorySelected = index;
                              });
                            },
                            child: CardCategory(
                              category: category,
                              index: index,
                              active: categorySelected,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    SectionTitle(title: "Popular Sweet Pie"),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: foods.map((food) {
                          int index = foods.indexOf(food);
                          return CardFood(index: index, food: food);
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 170),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: lightPurpleColor,
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomNavigationBar(
            currentIndex: currentPage,
            backgroundColor: whiteColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: orangeColor,
            unselectedItemColor: greyColor,
            onTap: (index) {
              setState(() {
                currentPage = index;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: "Cart"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favorite"),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
