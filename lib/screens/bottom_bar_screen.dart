import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:final_project/colors/colors.dart';
import 'package:final_project/screens/home_screen.dart';
import 'package:final_project/screens/jobs_screen.dart';
import 'package:final_project/screens/setting_user_screen.dart';
import 'package:flutter/material.dart';

class homebottonbar extends StatefulWidget {
  const homebottonbar({super.key});

  @override
  State<homebottonbar> createState() => _homebottonbarState();
}

class _homebottonbarState extends State<homebottonbar> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('in Fun');
  }

  final items = [
    Icon(Icons.map,color: colorStyle.basicColor),
    Icon(Icons.work,color: colorStyle.basicColor),
    Icon(Icons.manage_accounts_sharp, color:colorStyle.basicColor)
  ];

  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (value) {
          print(value);
          setState(() {
            index = value;
          });
        },
        height: 60,
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        color: colorStyle.mainColor,
      ),
      body: getSelectedWidget(index: index),
    );
  }

  Widget getSelectedWidget({ index=1}){
    Widget widget;

    switch(index){
      case 0:
        widget = jobScreen();
        break;
      case 1:
        widget = homeScreen();
        break;
      default:
        widget = settingUserScreen();  
    }
    return widget;
  }
}