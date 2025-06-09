import 'package:blinkit/data/repository/screens/cart/cartscreen.dart';
import 'package:blinkit/data/repository/screens/category/categoryscreen.dart';
import 'package:blinkit/data/repository/screens/home/homescreen.dart';
import 'package:blinkit/data/repository/screens/print/printscreen.dart';
import 'package:blinkit/data/repository/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomScreen extends StatefulWidget {
  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 28,
              width: 28,
              child: UiHelper.CustomImage(img: "home.png"),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 28,
              width: 28,
              child: UiHelper.CustomImage(img: "shopping.png"),
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 28,
              width: 28,
              child: UiHelper.CustomImage(img: "category.png"),
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 28,
              width: 28,
              child: UiHelper.CustomImage(img: "printer.png"),
            ),
            label: "Print",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}