import 'package:final_project/colors/colors.dart';
import 'package:final_project/component/textformfield.dart';
import 'package:flutter/material.dart';

class editScreen extends StatelessWidget {
  const editScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: Image.asset("assets/user.png",width: 100),
              borderRadius: BorderRadius.circular(150)
            ),
            SizedBox(
              height: 10,
            ),
            textFormField(icon: Icons.person, text: 'Name',),
            textFormField(icon: Icons.email, text: 'email',),
            textFormField(icon: Icons.password, text: 'Password',),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:MaterialStatePropertyAll(colorStyle.mainColor),

                  ),
                  onPressed: () {
                    
                  }, 
                  child: Text("Save",style: TextStyle(color: colorStyle.basicColor,fontWeight: FontWeight.bold),)
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:MaterialStatePropertyAll(colorStyle.mainColor),
                  ),
                  onPressed: () {
                    
                  }, 
                  child: Text("Cancle",style: TextStyle(color: colorStyle.basicColor,fontWeight: FontWeight.bold))
                )
              ],
            )
          ],
        ),
      )
    );
  }
}