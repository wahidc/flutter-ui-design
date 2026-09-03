import 'package:flutter/material.dart';
import 'package:food_app/Widget/food_data.dart';

class PopularItemsWidget extends StatelessWidget {
  PopularItemsWidget({super.key});
  


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            // Single Item
            for (int i = 0; i < foodItems.length; i++)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),

                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "itemPage", arguments: i,);
                          },
                          child: Image.asset(foodItems[i]["image"], height: 130)
                        ),
                        
                        Text(
                          foodItems[i]["title"],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          foodItems[i]["subtitle"],
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${foodItems[i]["price"]}",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
