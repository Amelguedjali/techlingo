import 'package:flutter/material.dart';
import 'package:techlingo/constant.dart';
import 'package:techlingo/pages/login.dart';
import 'package:techlingo/pages/Widgets.dart';

class ChooseGoal extends StatefulWidget {
  const ChooseGoal({Key? key}) : super(key: key);

  @override
  State<ChooseGoal> createState() => _ChooseGoalState();
}

class _ChooseGoalState extends State<ChooseGoal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
        appBar:AppBar(
          backgroundColor:  white ,
          elevation: 0.0,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text(
                "Skip",
                style: TextStyle(
                  fontFamily: 'Poppins',
                color:  black ,
              ),

              ),
            )
          ],
        ),

    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Text('Choose a daily goal',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),

          SizedBox(height: 10),

          Text('How much time par day do you want to \n study ? ',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 40),
          buildTimeButton('5min',context),
            SizedBox(height: 20),
            buildTimeButton(' 10min',context),
          SizedBox(height: 20),
          buildTimeButton('15min',context),
          SizedBox(height: 20),
          buildTimeButton(' 30min',context),
          SizedBox(height: 30),

        Center(
          child: ElevatedButton(
            child : Text(
              'Confirm',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: blueF,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(0),
              fixedSize: Size(280, 48),
              primary: white,
              onPrimary: blueF,
              elevation: 0,
              side: BorderSide(color:blueF,width: 1),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
            ),

            onPressed: () {},

          ),),

    ]),),
  );

  }
}
