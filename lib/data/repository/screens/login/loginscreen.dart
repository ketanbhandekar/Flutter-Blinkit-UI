import 'package:blinkit/data/repository/screens/bottomnav/bottomscreen.dart';
import 'package:blinkit/data/repository/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Added for better alignment
          children: [
            UiHelper.CustomImage(img: "blin.png"),
            SizedBox(height: 10),
            UiHelper.CustomImage(img: "blinsymbol.png"),
            SizedBox(height: 15),
            UiHelper.CustomText(
                text: "India's Last Minute App",
                color: Color(0XFF000000),
                fontweight: FontWeight.w900,
                fontsize: 14),
            SizedBox(height: 15),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                width: 300,
                padding: EdgeInsets.all(16), // Added padding for spacing
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Avoid unnecessary space
                  children: [
                    UiHelper.CustomText(
                        text: "Ketan",
                        color: Colors.black,
                        fontweight: FontWeight.w500,
                        fontsize: 14),
                    SizedBox(height: 5),
                    UiHelper.CustomText(
                        text: "7350728760",
                        color: Colors.black,
                        fontweight: FontWeight.w500,
                        fontsize: 14),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 40,
                      width: 280,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BottomScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,// Updated property
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomText(
                                  text: "Login With",
                                  color: Colors.white,
                                  fontweight: FontWeight.bold,
                                  fontsize: 14),
                              SizedBox(width: 5),
                              UiHelper.CustomImage(img: "zomato.png")
                            ],
                          )),
                    ),
                    SizedBox(height: 5),
                    UiHelper.CustomText(
                        text:
                        "Access your saved addresses from Zomato automatically!",
                        color: Colors.grey,
                        fontweight: FontWeight.normal,
                        fontsize: 10),
                    SizedBox(height: 15),
                    InkWell(
                      onTap: () {
                        print("Text Clicked!");
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        child: UiHelper.CustomText(
                          text: "or login with phone number",
                          color: Colors.green,
                          fontweight: FontWeight.normal,
                          fontsize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}