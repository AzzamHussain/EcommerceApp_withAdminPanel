import 'package:ecommerce_with_adminpanel/Admin/admin_login.dart';
import 'package:ecommerce_with_adminpanel/Admin/home_admin.dart';
import 'package:ecommerce_with_adminpanel/pages/cart_provider.dart';
import 'package:ecommerce_with_adminpanel/pages/onboard.dart';
import 'package:ecommerce_with_adminpanel/widgets/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = publishableKey; // Set Stripe publishable key
  await Firebase.initializeApp(); // Initialize Firebase

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Onboard(), // Set the initial screen to Onboard
      debugShowCheckedModeBanner: false,
    );
  }
}
