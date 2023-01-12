import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'constant.dart';


class introduction6 extends StatefulWidget {
  const introduction6({Key? key}) : super(key: key);

  @override
  State<introduction6> createState() => _introduction6State();
}

class _introduction6State extends State<introduction6> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: 81.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(72.68, 133.93, 68.45, 82.61),
              child: Image.asset('assets/caracter2.png',),
            ),

            //Button
            SizedBox(
                height:54,
                width: 312,
                child: ElevatedButton(
                    onPressed:() {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: blueF,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),

                      ),
                    ),
                    child: const Text('Sign in'))
            ),
            SizedBox(height: 21,),
            Text('-OR-',
              style: TextStyle(
                fontSize: 14,
              ),),
            SizedBox(height: 21,),
            SizedBox(
                height:54,
                width: 312,
                child: ElevatedButton(
                    onPressed:() {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: blueF,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),

                      ),
                    ),
                    child: const Text('Sign up'))
            ),

            //send button



          ],
        ),
      ),
    );
  }
}