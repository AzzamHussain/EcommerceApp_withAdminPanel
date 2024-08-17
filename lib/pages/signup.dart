import 'package:ecommerce_with_adminpanel/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFff5c30), Color(0xFFe74b1a)])),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 3,
            ),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0))),
            child: Text(""),
          ),
          Container(
            margin: EdgeInsets.only(top: 60.0,left: 20.0,right: 20.0), //ad here left right
            child: Column(
              children: [
                Center(
                  child: 
                    Image.asset(
                      "assets/logo.png",
                      width: MediaQuery.of(context).size.width / 2,
                      fit: BoxFit.cover,
                  
                    ),),
                    SizedBox(height: 50.0,),

                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        padding: EdgeInsets.only(right: 20.0,left: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height:  MediaQuery.of(context).size.height/1.5,
                      
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10.0)),
                        child: Column(children: [
                          SizedBox(height: 30.0,),
                          
                          Text("Sign Up",style: AppWidget.HeadLineTextFieldStyle(),),
                          SizedBox(height: 30.0,),
                          TextField(
                            decoration: InputDecoration(hintText: "Name",hintStyle: AppWidget.boldTextFieldStyle(),
                            prefixIcon: Icon(Icons.person_outlined) ),),
                            SizedBox(height: 30.0),
                          TextField(
                            decoration: InputDecoration(hintText: "Email",hintStyle: AppWidget.boldTextFieldStyle(),
                            prefixIcon: Icon(Icons.email_outlined) ),),
                            SizedBox(height: 30.0),
                            TextField(
                            decoration: InputDecoration(hintText: "Password",hintStyle: AppWidget.boldTextFieldStyle(),
                            prefixIcon: Icon(Icons.password_outlined) ),),
                            SizedBox(height:30.0),
                          
                              SizedBox(height:  60.0),
                              Material(
                                elevation: 5.0,
                              borderRadius: BorderRadius.circular(20),
                                child: Container(
                                   padding: EdgeInsets.symmetric(vertical: 8.0),
                                width: 200,
                                  decoration: BoxDecoration(color: Color(0xffff5720), borderRadius: BorderRadius.circular(20),),

                                  child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 18.0,fontFamily: 'Poppins1',fontWeight: FontWeight.bold),)),
                                ),
                              )     
                            ],
                            ),
                      ),
                      
                    ),
                    
                   SizedBox( height: 40.0,),
                    Text("Already have an account? Login",style:AppWidget.boldTextFieldStyle(),)
              
                  
              
                
              ],
            ),
          )
        ],
      ),
    );
  }
}