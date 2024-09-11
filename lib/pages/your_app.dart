import 'package:flutter/material.dart';
import 'details.dart'; // Import Details screen
import 'order.dart'; // Import Order screen

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Details(
        itemName: 'Sample Item',
        price: '20',
        imagePath: 'assets/sample_image.png',
      ),
      routes: {
        '/order': (context) => Order(),
      },
    );
  }
}
