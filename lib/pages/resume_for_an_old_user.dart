import 'package:flutter/material.dart';
import 'package:techlingo/constant.dart';


class resume_for_an_old_user extends StatefulWidget {
  const resume_for_an_old_user({Key? key}) : super(key: key);

  @override
  State<resume_for_an_old_user> createState() => _resume_for_an_old_userState();
}

class _resume_for_an_old_userState extends State<resume_for_an_old_user> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(21, 41, 331.9, 0),
              child: Icon(Icons.arrow_back_ios),
            ),
            //SizedBox(height: 68,),
            Text('Let the fun begin',
              style: TextStyle(
                fontFamily: 'poppindBold',
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),),
            SizedBox(height: 47,),
              Stack(
                  children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(29, 0, 8.24, 78.94),
                child: Image.asset('assets/caracter3.png',),
              ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(209.66, 28, 45.66, 0),
                      child: RotationTransition(
                        turns: new AlwaysStoppedAnimation(5 / 360),
                        child: new Text("Are you ready ?",
                        style: TextStyle(
                          fontFamily: 'poppinBold',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),),
                    ),),
                  ]
              ),





            //ema
            SizedBox(
                height:48,
                width: 236,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      primary: blueF,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),

                      ),
                    ),
                    child: const Text('Resume',
                    style:TextStyle(
                      fontSize: 14,
                      fontFamily: 'poppindBold'
                    ),))
            ),





            //send button



          ],
        ),
        //Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}