import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/Widget/PopularItemsWidget.dart';
import 'package:food_app/Widget/food_data.dart';

class NewestItemsWidget extends StatelessWidget {
  NewestItemsWidget({super.key});
  final PopularItemsWidget data = PopularItemsWidget();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            // Single Item
            for (int i = 0; i < foodItems.length; i++)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 150,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: .5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            foodItems[i]["image"],
                            height: 120,
                            width: 150,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              foodItems[i]["title"],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Taste Our ${foodItems[i]["title"]}, We Provide Our Great Foods.",
                              style: TextStyle(fontSize: 16),
                            ),
                            RatingBar.builder(
                              initialRating: foodItems[i]["rating"],
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, index) =>
                                  Icon(Icons.star, color: Colors.red),
                              onRatingUpdate: (index) {},
                            ),
                            Text(
                              "\$${foodItems[i]["price"]}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 25,
                            ),
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.red,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
