import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constant.dart';


class code_password extends StatefulWidget {
  const code_password({Key? key}) : super(key: key);

  @override
  State<code_password> createState() => _code_passwordState();
}

class _code_passwordState extends State<code_password> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 120),

            SizedBox(height: 21,),
            Text('Enter verification code',
              style: TextStyle(
                fontFamily: 'poppindBold',
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),),
            SizedBox(height: 65,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: color2,
                    border: Border.all(color: Colors.black38),
                    shape: BoxShape.circle,
                  ),
                  child: TextField(
                    decoration:InputDecoration (
                      border: InputBorder.none,
                    ),
                    onChanged: (value){
                      if (value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly,],
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: color2,
                    border: Border.all(color: Colors.black38),
                    shape: BoxShape.circle,
                  ),
                  child: TextField(
                    decoration:InputDecoration (
                      border: InputBorder.none,
                    ),
                    onChanged: (value){
                      if (value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly,],
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: color2,
                    border: Border.all(color: Colors.black38),
                    shape: BoxShape.circle,
                  ),
                  child: TextField(
                    decoration:InputDecoration (
                      border: InputBorder.none,
                    ),
                    onChanged: (value){
                      if (value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly,],
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: color2,
                    border: Border.all(color: Colors.black38),
                    shape: BoxShape.circle,
                  ),
                  child: TextField(
                    decoration:InputDecoration (
                      border: InputBorder.none,
                    ),
                    onChanged: (value){
                      if (value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly,],
                  ),
                )
              ],
            ),
            SizedBox(height: 69,),
            Text(
              "Didn’t receive a code!",
              style: TextStyle(
                fontSize: 14,

              ),
            ),
            SizedBox(height: 19,),
            Text(
              "Resend",
              style: TextStyle(
                fontSize: 14,
                color: blueC,

              ),),

            SizedBox(height: 104,),
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