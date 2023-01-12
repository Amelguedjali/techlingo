import 'package:flutter/material.dart';
import 'constant.dart';
import 'login.dart';
import 'Widgets.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}
class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                    Text('Signup' ,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),

                  SizedBox(height: 25),


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child : Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border : InputBorder.none,
                            hintText: 'Enter your Username',


                          ),

                        ),),),),

                  SizedBox(height: 13),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child : Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border : InputBorder.none,
                            hintText: 'Enter your Email',

                          ),

                        ),),),),

                  SizedBox(height: 13),


                  //password textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your Password',
                            suffixIcon: Icon(Icons.visibility_off,
                                color: Colors.grey[600]),

                          ),

                        ),),),),


                  SizedBox(height: 13),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm your Password',
                            suffixIcon: Icon(Icons.visibility_off,
                                color: Colors.grey[600]),

                          ),

                        ),),),),



                  SizedBox(height: 13),

                  //sign in button
                  buildSign(context),
                  //Don't have an account
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child : Row(
                        mainAxisAlignment : MainAxisAlignment.center,
                        children : [
                          Text(
                            "Already have an account? ",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(

                            child:  Text(
                              " Login",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: blueC,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () =>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>LoginPage())),),

                        ],)),


                  // or
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.9,
                            color:Colors.grey[700],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.grey[900]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.9,
                            color: Colors.grey[900],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  buildLoginWithGoogle(context),



                ]),))


    );
  }
}




