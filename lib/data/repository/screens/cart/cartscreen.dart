import 'package:blinkit/data/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var best = [
    {"img": "milk.png", "text": "Amul Milk", "price": "27"},
    {"img": "potato.png", "text": "Potato (Aloo)", "price": "37"},
    {"img": "tomato.png", "text": "Hybrid Tomato", "price": "37"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Color(0XFFF7CB45),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          UiHelper.CustomText(
                            text: "Blinkit in",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          UiHelper.CustomText(
                            text: "8 minutes",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 15,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          UiHelper.CustomText(
                              text: "Home  -",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 12),
                          SizedBox(width: 10),
                          UiHelper.CustomText(
                              text: "Ketan Bhandekar",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 12)
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 90,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: UiHelper.CustomTextField(controller: searchController),
                )
              ],
            ),
            SizedBox(height: 20),
            UiHelper.CustomImage(img: "shoppingcart.png"),
            SizedBox(height: 20),
            UiHelper.CustomText(
                text: "Reordering will be easy",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 16),
            SizedBox(height: 10),
            UiHelper.CustomText(
                text: "Items you order will show up here so you can buy",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontsize: 12),
            UiHelper.CustomText(
                text: "them again easily",
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontsize: 12),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                UiHelper.CustomText(
                    text: "Bestsellers",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 15)
              ],
            ),
            SizedBox(height: 10),

            // ⭐ This Row displays 3 products in one row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(best.length, (index) {
                  var item = best[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: UiHelper.CustomImage(img: item["img"]!),
                          ),
                          Positioned(
                            right: 5,
                            bottom: 5,
                            child: UiHelper.CustomButton(() {}),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        width: 100,
                        child: Text(
                          item["text"]!,
                          style: TextStyle(fontSize: 12),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          UiHelper.CustomImage(img: "timer.png"),
                          SizedBox(width: 4),
                          Text("16 MINS", style: TextStyle(
                              color: Colors.grey, fontSize: 11)),
                        ],
                      ),
                      SizedBox(height: 3),
                      Text(
                        "₹ ${item["price"]}",
                        style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}