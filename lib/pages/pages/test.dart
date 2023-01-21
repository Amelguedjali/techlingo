import 'package:flutter/material.dart';
import 'package:projet_bdd/constant.dart';


class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
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
            SizedBox(height: 35.16),
            Text("Now it's time for a test !",
              style: TextStyle(
                fontFamily: 'poppindBold',
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),),
            //SizedBox(height: 47,),
            Padding(
                    padding: const EdgeInsets.fromLTRB(44, 20, 42.49, 56.75),
                    child: Image.asset('assets/caracter4.png',),
                  ),
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
                    child: const Text('Start',
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