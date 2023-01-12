import 'package:flutter/material.dart';
import 'constant.dart';


class new_password extends StatefulWidget {
  const new_password({Key? key}) : super(key: key);

  @override
  State<new_password> createState() => _new_passwordState();
}

class _new_passwordState extends State<new_password> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: 81.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(54.45, 59.4, 47.86, 0.0),
              child: Image.asset('assets/caracter2.png',),
            ),
            SizedBox(height: 44.28,),

            //enter new password field
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
                  hintText: 'Enter new password',

                ),

              ),
            ),
            SizedBox(height: 21,),
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
                  hintText: 'Confirm password',

                ),

              ),
            ),
            SizedBox(height: 23,),
            //Button
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
                    child: const Text('Submit'))
            ),
            SizedBox(height: 23,),

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
            SizedBox(height: 18,),

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
  }}