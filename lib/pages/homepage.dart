import 'package:ecommerce_with_adminpanel/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Azzam", style: AppWidget.boldTextFieldStyle()),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Delicious Food\n",
                        style: AppWidget.HeadLineTextFieldStyle(),
                      ),
                      TextSpan(
                        text: "Discover and Get Food",
                        style: AppWidget.LightTextFieldStyle(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10), // Space between the text and images
                Row(
                  children: [
                    Image.asset(
                      'assets/burger.png',
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 15),
                    Image.asset(
                      'assets/pizza.png',
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/ice-cream.png',
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
