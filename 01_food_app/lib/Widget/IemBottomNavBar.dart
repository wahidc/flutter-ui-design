import 'package:flutter/material.dart';
import 'package:food_app/Widget/food_data.dart';



class ItemBottomNavBar extends StatelessWidget {
  final int index;

  const ItemBottomNavBar({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 15),
                Text(
                  "\$${foodItems[index]["price"]}",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.red),
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  )
                )
              ),
              child: Text(
                "Order Now",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}