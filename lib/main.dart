//import 'package:ecommerce_with_adminpanel/pages/login.dart';
import 'package:ecommerce_with_adminpanel/pages/onboard.dart';
import 'package:ecommerce_with_adminpanel/pages/signup.dart';
import 'package:ecommerce_with_adminpanel/widgets/app_constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = publishableKey;
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Onboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

 // This trailing comma makes auto-formatting nicer for build methods.
  