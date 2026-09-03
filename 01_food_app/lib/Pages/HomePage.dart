import 'package:flutter/material.dart';
import 'package:food_app/Widget/AppBarWidget.dart';
import 'package:food_app/Widget/CategoriesWidget.dart';
import 'package:food_app/Widget/NewestItemsWidget.dart';
import 'package:food_app/Widget/PopularItemsWidget.dart';
import 'package:food_app/Widget/drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Custom App Bar Widget
          AppBarWidget(),

          // Search
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: .5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.red),
                    Container(
                      height: 50,
                      width: 280,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "What would you like to have?",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),

          // Category
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),

          // Category Widget
          CategoriesWidget(),

          // Popular Items
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
            child: Text(
              "Popular",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),

          // Popular Items Widget
          PopularItemsWidget(),

          // Newest Items
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
            child: Text(
              "Newest",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),

          // Newest Item Widget
          NewestItemsWidget(),
        ],
      ),

      // Drawer
      drawer: DrawerWidget(),




      // FAB
      floatingActionButton: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {
            Navigator.pushNamed(context, "cartPage");
          },
          backgroundColor: Colors.white,
          child: Icon(
            Icons.shopping_cart_outlined,
            size: 28,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
