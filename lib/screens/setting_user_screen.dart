// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:final_project/colors/colors.dart';
import 'package:final_project/screens/edit_screen.dart';
import 'package:flutter/material.dart';

class settingUserScreen extends StatelessWidget {
  const settingUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                // top: 30,
                bottom: 30,
                left: 20,
                right: 20
              ),
              padding: EdgeInsets.only(left: 50),
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colorStyle.mainColor,
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 197, 62, 62),
                              blurRadius: 1,
                              spreadRadius: 10,
                              blurStyle: BlurStyle.inner
                            )
                          ],
                          borderRadius: BorderRadius.circular(150)
                        ),
                        child: ClipRRect(
                          child: Image.asset("assets/user.png",width: 100),
                            borderRadius: BorderRadius.circular(150)
                          ),
                        ),
                      ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text("Name",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: colorStyle.basicColor),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colorStyle.basicColor,
              ),
              child: Column(
                children: [
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Email"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.email,size: 16,),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Password"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.password,size: 16,)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("CV.pdf"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.picture_as_pdf,size: 16,),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => editScreen())
                          );
                        },
                        child: Row(
                          children: [
                            Text("EDIT"),
                            Icon(Icons.arrow_forward_ios_rounded,size: 16,)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),        
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colorStyle.basicColor,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("LOG OUT"),
                      Icon(Icons.logout_outlined,size: 16,)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dark Mode"),
                      Icon(Icons.light_mode_rounded,size: 16,)
                    ],
                  )
                ],
              ),
            )         
          ],
      ),
    );
  }
}