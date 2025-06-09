import 'package:blinkit/data/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var grocerykitchen = [
    {"img": "vegetables.png", "text": "Vegetables & \n Fruits"},
    {"img": "atta.png", "text": "Atta, Dal & \n Rice"},
    {"img": "oilghee.png", "text": "Oil Ghee & \n Masala"},
    {"img": "daily.png", "text": "Daily, Bread & \n Milk"},
    {"img": "biscuits.png", "text": "Biscuits & \n Bakery"},
  ];
  var secondgrocery = [
    {"img": "dryfruits.png", "text": "Dry Fruits & \n Cereals"},
    {"img": "kitchen.png", "text": "Kitchen & \n Appliances"},
    {"img": "tea.png", "text": "Tea & \n Coffees"},
    {"img": "icecream.png", "text": "Ice Creams & \n much more"},
    {"img": "noodles.png", "text": "Noodles & \n Packet Food"}
  ];
  var snaksanddrinks = [
    {"img": "chips.png", "text": "Chips & \n Namkeens"},
    {"img": "sweets.png", "text": "Sweets & \n Choclates"},
    {"img": "drinks.png", "text": "Drinks & \n Juices"},
    {"img": "sauces.png", "text": "Sauces & \n Spreads"},
    {"img": "beauty.png", "text": "Beauty & \n Cosmetics"}
  ];
  var household = [
    {
      "img": "surf.png",
    },
    {
      "img": "soap.png",
    },
    {
      "img": "perfume.png",
    },
    {
      "img": "sofa.png",
    },
    {
      "img": "oil.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                        fontsize: 12,
                      ),
                      SizedBox(width: 10),
                      UiHelper.CustomText(
                        text: "Ketan Bhandekar",
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 12,
                      ),
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
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 20),
            UiHelper.CustomText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14)
          ],
        ),
        SizedBox(height: 10),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Container(
                        height: 78,
                        width: 71,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB)),
                        child: UiHelper.CustomImage(
                            img: grocerykitchen[index]["img"].toString()),
                      ),
                    ),
                    UiHelper.CustomText(
                        text: grocerykitchen[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10)
                  ],
                );
              },
              itemCount: grocerykitchen.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Container(
                        height: 78,
                        width: 71,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB)),
                        child: UiHelper.CustomImage(
                            img: secondgrocery[index]["img"].toString()),
                      ),
                    ),
                    UiHelper.CustomText(
                        text: secondgrocery[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10)
                  ],
                );
              },
              itemCount: secondgrocery.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(width: 20),
            UiHelper.CustomText(
                text: "Snakes & Drinks",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14),
          ],
        ),
        SizedBox(height: 10),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Container(
                        height: 78,
                        width: 71,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB)),
                        child: UiHelper.CustomImage(
                            img: snaksanddrinks[index]["img"].toString()),
                      ),
                    ),
                    UiHelper.CustomText(
                        text: snaksanddrinks[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10)
                  ],
                );
              },
              itemCount: snaksanddrinks.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(width: 20,),
            UiHelper.CustomText(
                text: "Household & Essentials",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14)
          ],
        ),
        SizedBox(height: 5,),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Container(
                    height: 78,
                    width: 71,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0XFFD9EBEB)),
                    child: UiHelper.CustomImage(
                        img: household[index]["img"].toString()),
                  ),
                );
              },
              itemCount: household.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ]),
    );
  }
}