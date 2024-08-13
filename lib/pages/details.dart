import 'package:ecommerce_with_adminpanel/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Image.asset(
              "assets/salad2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15.0,
            ),
          Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Russian",
          style: AppWidget.boldTextFieldStyle(),
        ),
        Text(
          "Salad",
          style: AppWidget.LightTextFieldStyle(),
        ),
      ],
    ),
    Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Icon(
        Icons.remove,
        color: Colors.white,
      ),
    ),
  ],
)
          ],
        ),
      ),
    );
  }
}
