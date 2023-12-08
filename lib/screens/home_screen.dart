// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:final_project/colors/colors.dart';
import 'package:final_project/screens/details_track.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorStyle.mainColor,
        leading: Icon(Icons.dark_mode_rounded,color: colorStyle.basicColor),
        title: Text("Names",style: TextStyle(color: colorStyle.basicColor)),
         actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 50,
                width: 160,
                child: TextField(
                  decoration: InputDecoration(
                    
                    prefixIcon: Icon(Icons.search,color: colorStyle.basicColor),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 246, 234, 207),
                        width: 1
                      )
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: colorStyle.basicColor)
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
            // top: 0,
            bottom: 20,
            left: 20,
            right: 20
        ),
        child:GridView.builder(
          itemCount: 120,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => detailsTrack(pathImage: "assets/vue.png",titleOfTrack: "Vue.js",))
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 10
              ),
              height: 170,
              decoration: BoxDecoration(
                boxShadow: [
                  
                  BoxShadow(
                    blurRadius: 100,
                    color: Colors.grey,
                    spreadRadius: -40
                  ),
                ],
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    ),
                    child: Image.asset("assets/vue.png",width: 120),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 5
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                      ),
                      color: colorStyle.secondColor,
                    ),
                    width: 120,
                    height: 30,
                    child: Text("Vue.js",textAlign: TextAlign.center,style: TextStyle(color: colorStyle.basicColor)),
                  )
                ],
              ),
            ),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
        )
      ),
      ),
    );
  }
}



      


