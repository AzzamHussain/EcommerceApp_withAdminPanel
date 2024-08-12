import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_with_adminpanel/pages/homepage.dart';
import 'package:ecommerce_with_adminpanel/pages/order.dart';
import 'package:ecommerce_with_adminpanel/pages/profile.dart';
import 'package:ecommerce_with_adminpanel/pages/wallet.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Homepage homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage = Homepage();
    profile = Profile();
    order = Order();
    wallet = Wallet();
    pages = [homepage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            Icon(
              Icons.wallet_outlined,
              color: Colors.black,
            ),
            Icon(
              Icons.person_2_outlined,
              color: Colors.black,
            )
          ]),
      body: pages[currentTabIndex],
    );
  }
}
