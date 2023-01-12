import 'package:flutter/material.dart';
import 'package:techlingo/constant.dart';


class forgot_password extends StatefulWidget {
  const forgot_password({Key? key}) : super(key: key);

  @override
  State<forgot_password> createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: 81.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(35.53, 81.0, 77.17, 0.0),
              child: Image.asset('assets/caracter1.png',),
            ),
            SizedBox(height: 21,),
            Text('Forgot your password',
            style: TextStyle(
              fontFamily: 'poppindBold',
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),),
            SizedBox(height: 29.0,),
            //email field
            Padding(
              padding: const EdgeInsets.fromLTRB(24,0,24,0),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: blueF),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  isDense: true,                      // Added this
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'Enter your email',

                ),

              ),
            ),
            SizedBox(height: 29,),
            SizedBox(
                height:54,
                width: 312,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: blueF,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),

                      ),
                    ),
                    child: const Text('Send'))
            ),
            SizedBox(height: 22,),

            Row(
              children: [
                SizedBox(width: 129,),
                Text(
                  "Back to",
                  style: TextStyle(
                    fontSize: 14,

                  ),
                ),
                SizedBox(width: 7,),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 14,
                    color: blueC,

                  ),),
              ],
            ),
            SizedBox(height: 22,),

            Row(
              children: [
                SizedBox(width: 63,),
                Text(
                    "Don't have an account?",
                  style: TextStyle(
                    fontSize: 14,

                  ),
                ),
                SizedBox(width: 11,),
                Text(
                    "SignUp",
                     style: TextStyle(
                     fontSize: 14,
                       color: blueC,

                ),),
              ],
            ),
            //send button



          ],
        ),
      ),
    );
  }
}
