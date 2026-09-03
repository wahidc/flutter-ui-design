import 'package:flutter/material.dart';
import 'package:food_app/Widget/food_data.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  // final List<String> imagePaths = [
  //   "assets/images/biryani.png",
  //   "assets/images/burger.png",
  //   "assets/images/drink.png",
  //   "assets/images/pizza.png",
  //   "assets/images/salan.png",
  // ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        child: Row(
          children: [
            for(int i=0; i<foodItems.length; i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
                ),
                child: Image.asset(
                  foodItems[i]["image"],
                  // "assets/images/salan.png",
                  width: 50,
                  height: 50,
                  ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}