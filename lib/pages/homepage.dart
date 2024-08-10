import 'package:ecommerce_with_adminpanel/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool icecream = false, salad = false, burger = false, pizza = false;

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
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildSelectableMaterialImage('assets/burger.png', burger, () {
                  setState(() {
                    burger = !burger;
                    pizza = false;
                    icecream = false;
                    salad = false;
                  });
                }),
                buildSelectableMaterialImage('assets/pizza.png', pizza, () {
                  setState(() {
                    pizza = !pizza;
                    burger = false;
                    icecream = false;
                    salad = false;
                  });
                }),
                buildSelectableMaterialImage('assets/ice-cream.png', icecream,
                    () {
                  setState(() {
                    icecream = !icecream;
                    burger = false;
                    pizza = false;
                    salad = false;
                  });
                }),
                buildSelectableMaterialImage('assets/salad.png', salad, () {
                  setState(() {
                    salad = !salad;
                    burger = false;
                    pizza = false;
                    icecream = false;
                  });
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSelectableMaterialImage(
      String assetPath, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: isSelected ? 10.0 : 5.0, // Increase elevation if selected
        borderRadius: BorderRadius.circular(10.0),
        color: isSelected
            ? Colors.blue[700]
            : Colors.white, // Highlight color if selected
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              assetPath,
              height: 40, // Adjust size as needed
              width: 40, // Adjust size as needed
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
