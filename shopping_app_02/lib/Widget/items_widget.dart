import 'package:flutter/material.dart';
import 'package:shopping_app_02/Pages/product_data.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      // it disable the scoll functionality of grid view , then it will scroll in list view of home page
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
     
      children: [
        for(int i=0; i<products.length; i++)
        Container(
          padding: EdgeInsets.only(left: 12, top: 5, right: 12, bottom: 2),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFF4C53A5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      " ${products[i]["discount"]} ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.favorite_border, color: Colors.red),
                ],
              ),

              InkWell(
                onTap: () {},
                child: Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    products[i]["image"],
                    height: 115,
                    width: 115,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  products[i]["title"],
                  style: TextStyle(fontSize: 16, color: Color(0xFF4C53A5), fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                  products[i]["description"],
                  style: TextStyle(fontSize: 12, color: Color(0xFF4C53A5)),
                ),
              
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${products[i]["price"]}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart,
                      size: 20,
                      color: Color(0xFF4C53A5),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
