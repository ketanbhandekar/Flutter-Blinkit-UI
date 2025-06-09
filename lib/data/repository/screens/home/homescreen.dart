import 'package:flutter/material.dart';
import '../../widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var data = [
    {"img": "lights.png", "text": "Lights & Candles"},
    {"img": "gifts.png", "text": "Diwali Gifts"},
    {"img": "gadgets.png", "text": "Gadgets"},
    {"img": "living.png", "text": "Home & Living"},
  ];
  var category = [
    {"img": "golden.png", "text": "Golden Glass\nWooden Lid Candle"},
    {"img": "royal.png", "text": "Royal Gulab Jamun\nBy Bikano"},
    {"img": "bikaji.png", "text": "Bikaji Bhujia\nStarter Pack"},
  ];
  var grocerykitchen = [
    {"img": "vegetables.png", "text": "Vegetables &\nFruits"},
    {"img": "atta.png", "text": "Atta, Dal &\nRice"},
    {"img": "oilghee.png", "text": "Oil, Ghee &\nMasala"},
    {"img": "daily.png", "text": "Dairy, Bread &\nMilk"},
    {"img": "biscuits.png", "text": "Biscuits &\nBakery"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔴 Header Section
            Stack(
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  color: Color(0XFFEC0505),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: UiHelper.CustomText(
                          text: "Blinkit in",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        child: UiHelper.CustomText(
                          text: "8 minutes",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            UiHelper.CustomText(
                                text: "Home -",
                                color: Colors.white,
                                fontweight: FontWeight.bold,
                                fontsize: 12),
                            const SizedBox(width: 10),
                            Expanded(
                              child: UiHelper.CustomText(
                                  text: "Ketan Bhandekar",
                                  color: Colors.white,
                                  fontweight: FontWeight.bold,
                                  fontsize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  top: 30,
                  right: 20,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  right: 20,
                  child: UiHelper.CustomTextField(controller: searchController),
                )
              ],
            ),

            // 🎇 Diwali Sale Section - fixed
            Container(
              width: double.infinity,
              color: const Color(0XFFEC0505),
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UiHelper.CustomImage(img: "crackle1.png"),
                      UiHelper.CustomImage(img: "crackle2.png"),
                      UiHelper.CustomText(
                          text: "Mega Diwali Sale",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 18),
                      UiHelper.CustomImage(img: "crackle3.png"),
                      UiHelper.CustomImage(img: "crackle4.png")
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 108,
                    child: ListView.builder(
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            width: 86,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.CustomImage(img: data[index]["img"].toString()),
                                const SizedBox(height: 5),
                                UiHelper.CustomText(
                                  text: data[index]["text"].toString(),
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  fontsize: 10,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // 🔖 Category Cards Horizontal List
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 230,
                child: ListView.builder(
                  itemCount: category.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Column(
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
                                child: UiHelper.CustomImage(
                                    img: category[index]["img"].toString()),
                              ),
                              Positioned(
                                bottom: 5,
                                right: 5,
                                child: UiHelper.CustomButton(() {}),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: 100,
                            child: UiHelper.CustomText(
                              text: category[index]["text"].toString(),
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 10,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              UiHelper.CustomImage(img: "timer.png"),
                              const SizedBox(width: 4),
                              UiHelper.CustomText(
                                text: "16 MINS",
                                color: Colors.grey,
                                fontweight: FontWeight.normal,
                                fontsize: 10,
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 2),
                                child: UiHelper.CustomImage(img: "rs.png"),
                              ),
                              const SizedBox(width: 2),
                              UiHelper.CustomText(
                                text: "79",
                                color: Colors.black,
                                fontweight: FontWeight.bold,
                                fontsize: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            // 🍽 Grocery Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  UiHelper.CustomText(
                      text: "Grocery & Kitchen",
                      color: Colors.black,
                      fontweight: FontWeight.w900,
                      fontsize: 14)
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 130,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Column(
                        children: [
                          Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0XFFD9EBEB)),
                            child: UiHelper.CustomImage(
                                img: grocerykitchen[index]["img"].toString()),
                          ),
                          const SizedBox(height: 4),
                          UiHelper.CustomText(
                              text: grocerykitchen[index]["text"].toString(),
                              color: Colors.black,
                              fontweight: FontWeight.normal,
                              fontsize: 10,
                              textAlign: TextAlign.center)
                        ],
                      ),
                    );
                  },
                  itemCount: grocerykitchen.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}