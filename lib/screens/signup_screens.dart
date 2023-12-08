// ignore_for_file: camel_case_types

import 'package:final_project/component/textformfield.dart';
import 'package:final_project/screens/bottom_bar_screen.dart';
import 'package:flutter/material.dart';

class signupScreens extends StatelessWidget {
  const signupScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/background.png"),
              Container(
                margin: EdgeInsets.only(
                  top: 150,
                  left: 20,
                  right: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("SIGNUP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    textFormField(text: "Enter Your Name",icon:Icons.person ,),
                    textFormField(text: "Enter Your Email",icon:Icons.email ,),
                    textFormField(text: "Enter Your Password",icon:Icons.lock_open_rounded ,),
                    textFormField(text: "Conirm Password",icon:Icons.lock_open_rounded ,),
                    SizedBox(
                      height: 35,
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
                            width: 120,
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
                                Text("SIGNUP",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white)),
                                Icon(Icons.arrow_forward_ios,size: 15,color: Colors.white,)
                              ]
                            ),
                          ),
                        )
                      ],
                    ),                    
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