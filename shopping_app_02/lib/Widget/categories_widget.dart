import 'package:flutter/material.dart';
import 'package:shopping_app_02/Pages/product_data.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=0; i<products.length; i++)
          Container(
            
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Image.asset(
                  products[i]["image"],
                  width: 40,
                  height: 40,
                ),
                Text(
                  products[i]["title"],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF4C53A5),
                  ),
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}