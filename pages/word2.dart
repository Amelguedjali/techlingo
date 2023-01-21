import 'package:flutter/material.dart';
import 'package:techlingo/constant.dart';
import 'package:techlingo/pages/test.dart';


class word2 extends StatefulWidget {
  const word2({Key? key}) : super(key: key);

  @override
  State<word2> createState() => _word2State();
}

class _word2State extends State<word2> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 41,),
            Row(
              children: [
                SizedBox(width: 21,),
                  Icon(Icons.arrow_back_ios,),
                SizedBox(width: 275.22,),
                Icon(Icons.bookmark_border_rounded,
                    color: blueC),
              ],
            ),
            SizedBox(
                height:63,
                width: 236,
                child: Container(
                  height: 63,
                  width: 236,
                  decoration: BoxDecoration(

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                      ),
                      BoxShadow(
                        color: color1,
                        spreadRadius: -1.0,
                        blurRadius: 11.0,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                    child: const Text('2 / 10',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'poppindBold',
                        fontSize: 24,
                      ),),
                  ),
                )
            ),
            SizedBox(height: 83,),
            Text('API',
              style: TextStyle(
                fontFamily: 'poppindBold',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 74,),
            Padding(
              padding: const EdgeInsets.fromLTRB(37, 0, 37, 89),
              child: Text('API is the acronym for application programming interface , a software intermediary that allows two applications to talk to each other.',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 20,

                  
                ),textAlign: TextAlign.center,),
            ),




            Center(
                child: SizedBox(
                  height: 63,
                  width: 63,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const test()),
                      );
                    },
                    child: Icon(Icons.arrow_forward_sharp, color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                      shadowColor: blueC,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.5), // <-- Radius
                      ),
                      padding: EdgeInsets.all(20),
                      elevation: 25,
                      backgroundColor: blueF, // <-- Button color
                      foregroundColor: blueC, // <-- Splash color
                    ),
                  ),
                )

            ),



          ],
        ),
      ),
    );
  }
}