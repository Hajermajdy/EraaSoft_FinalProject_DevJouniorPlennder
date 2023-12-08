// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:final_project/component/textformfield.dart';
import 'package:final_project/screens/signup_screens.dart';
import 'package:final_project/screens/bottom_bar_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/backgroundwithlogo.png"),
              Container(
                margin: EdgeInsets.only(
                  top: 250,
                  left: 20,
                  right: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("LOGIN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    textFormField(text: "Enter Your Name",icon:Icons.person ,),
                    textFormField(text: "Enter Your Password",icon:Icons.lock_open_rounded ,),
                    SizedBox(
                      height: 28,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => homebottonbar(),)
                            );
                          },
                          child: Container(
                            width: 100,
                            padding: EdgeInsets.only(
                              left: 17,
                              right: 17,
                              top: 10,
                              bottom: 10
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color.fromARGB(143, 211, 57, 57), Color.fromARGB(255, 191, 29, 29)],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("LOGIN",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white)),
                                Icon(Icons.arrow_forward_ios,size: 15,color: Colors.white,)
                              ]
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?  ",style: TextStyle(color: const Color.fromARGB(255, 178, 183, 181)),),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => signupScreens(),)
                            );
                          },
                          child: Text("Sign up",style: TextStyle(color: Color(0xff4F6F52),fontWeight: FontWeight.w800),)
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}