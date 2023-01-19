import 'package:flutter/material.dart';
import 'package:techlingo/pages/forgot_password.dart';
import '../constant.dart';
import 'signup.dart';
import 'Widgets.dart';
import 'package:techlingo/common/widgets/custom_textfield.dart';
import 'package:techlingo/features/auth/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login-screen';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Center(
            child: Form(
              key: _signUpFormKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    //Login
                    Text('Login',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text('Welcome back!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),

                    SizedBox(height: 25),
                    //email textfield

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
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your Email',

                            ),

                          ),),),),

                    SizedBox(height: 20),


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
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your Password',
                              suffixIcon: Icon(Icons.visibility_off,
                                color: Colors.grey[600]),

                            ),

                          ),),),),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(

                                  'Forget Password?',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: blueC,
                                    fontWeight: FontWeight.bold,)))
                        ],
                      ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context, MaterialPageRoute(builder: (context) => forgot_password()));
                            },
                            child: Text(

                                'Forgot Password?',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: blueC,
                                  fontWeight: FontWeight.bold,)))
                      ],
                    ),
                  ),

                    //login in button

                    Center(
                      child: ElevatedButton(
                        child : Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(13),
                          // fixedSize: Size(300, 50),
                          primary: blueF,
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
                        ),

                        onPressed: () {
                          if (_signInFormKey.currentState!.validate()) {
                              signInUser();
                            }
                        },),),

                  //Don't have an account
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            child: Text(
                              " Signup",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: blueC,
                                fontWeight: FontWeight.bold,
                              ),

                            ),
                            onPressed: () =>
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) =>
                                        SignupPage())),),

                        ],)),

                  SizedBox(height: 10),


                  // or
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.9,
                            color: Colors.grey[700],
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



                  SizedBox(height: 25),

              buildLoginWithGoogle( context),


              ],),),
          ),)


    );
  }
}


