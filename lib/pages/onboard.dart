import 'package:ecommerce_with_adminpanel/pages/signup.dart';
import 'package:ecommerce_with_adminpanel/widgets/content_model.dart';
import 'package:ecommerce_with_adminpanel/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(); // Initialize the PageController
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index; // Update currentIndex and refresh UI
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.only(top:40,left: 20,right: 20),
                  child: Column(
                    children: [
                      Image.asset(contents[i].image,height: 350,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
                      SizedBox(height: 40,),
                      Text(contents[i].title,style: AppWidget.boldTextFieldStyle(),),
                      SizedBox(height: 40.0,),
                      Text(contents[i].description,style: AppWidget.LightTextFieldStyle(),)
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(contents.length, (index)=>                 
              buildDot(index,context),
              )
            ),
            ),
          GestureDetector(
            onTap: (){
              if (currentIndex==contents.length-1) {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUp()));
              }
              _controller.nextPage(duration: Duration(milliseconds: 100),
              curve: Curves.bounceIn);
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                
                decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10.0)),
                height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: Center(child: Text("Next", style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),)),),
            ),
          ),            
        ],
      ),
    );
  }
  Container buildDot(int index,BuildContext context){
    return Container(
      height: 10.0,
      width: currentIndex==index?18:7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.black38),


    );
  }
}
