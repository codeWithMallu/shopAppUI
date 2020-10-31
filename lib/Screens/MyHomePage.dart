import 'package:flutter/material.dart';
import 'package:my_shop_app/Widgets/HomePage/BottomNavigationBar.dart';
import 'package:my_shop_app/Widgets/HomePage/MyHomePageBody.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: Image.asset("assets/images/hamburger.png"),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            margin: EdgeInsets.all(10),
            child: Image.asset("assets/images/SEARCH.png"),
          ),
        ],
      ),
      body: MyHomePageBody(),
      bottomNavigationBar: MyHomeBottomNavBar(),
    );
  }
}
