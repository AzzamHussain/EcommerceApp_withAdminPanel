import 'package:ecommerce_with_adminpanel/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 2.0,
              child: Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child:
                      Text("Wallet", style: AppWidget.HeadLineTextFieldStyle()),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFF2F2F2)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/wallet.png',
                    height: 60.0,
                    width: 60.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Wallet",
                        style: AppWidget.LightTextFieldStyle(),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Rs:" + "100",
                        style: AppWidget.boldTextFieldStyle(),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Add Money",
                style: AppWidget.boldTextFieldStyle(),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0XFFE9E2E2),
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Rs:" + "100",
                          style: AppWidget.boldTextFieldStyle(),
                        )),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0XFFE9E2E2),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Rs:" + "1000",
                        style: AppWidget.boldTextFieldStyle(),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0XFFE9E2E2),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Rs:" + "1200",
                        style: AppWidget.boldTextFieldStyle(),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0XFFE9E2E2),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Rs:" + "10000",
                        style: AppWidget.boldTextFieldStyle(),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0XFFE9E2E2),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Rs:" + "1500",
                        style: AppWidget.boldTextFieldStyle(),
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.symmetric(vertical: 12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFF008080),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Center(
                child: Text(
                  "Add Money",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
