// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:final_project/colors/colors.dart';
import 'package:flutter/material.dart';

class jobScreen extends StatelessWidget {
  const jobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        backgroundColor: colorStyle.mainColor,
      
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
            bottom: 10,
            left: 10,
            right: 10
        ),
        child: ListView.builder(
            itemCount: 120,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(
                top: 10
              ),
              height: 90,
              decoration: BoxDecoration(
                color: colorStyle.secondColor,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name Of Jobs",style: TextStyle(color: colorStyle.basicColor,fontWeight: FontWeight.w500,fontSize: 16)),
                      Text("Description of jobs....",style: TextStyle(color: Colors.grey[200],fontSize: 13))
                    ],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(colorStyle.basicColor)
                    ),
                    onPressed: () {
                      // ****************Actien when click******************
                    },
                    child: Text("Apply",style: TextStyle(color: colorStyle.secondColor,fontWeight: FontWeight.w600),)
                  )
                ],
              ),
            ),
        ),
      ),
    );
  }
}