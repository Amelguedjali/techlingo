import 'package:flutter/material.dart';
import 'package:techlingo/constant.dart';


class quiz_match extends StatefulWidget {
  const quiz_match({Key? key}) : super(key: key);

  @override
  State<quiz_match> createState() => _quiz_matchState();
}

class _quiz_matchState extends State<quiz_match> {
  var isHover= false;
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
                    child: const Text('1 / 4',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'poppindBold',
                        fontSize: 24,
                      ),),
                  ),
                )
            ),
            SizedBox(height: 97,),

            Row(
              children: [
                SizedBox(width: 18,),
                SizedBox(
                    height:40,
                    width: 142,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          onPrimary: blueF,
                          shadowColor: blueF,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                        child: const Text('',
                          style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            fontSize: 20,),))
                ),
                SizedBox(width: 36.98,),
                SizedBox(
                    height:40,
                    width: 142,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          onPrimary: blueF,
                          shadowColor: blueF,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                        child: const Text('',
                          style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            fontSize: 20,),))
                ),
              ],
            ),
            SizedBox(height: 27,),
            Row(
              children: [
                SizedBox(width: 18,),
                SizedBox(
                    height:40,
                    width: 142,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          onPrimary: blueF,
                          shadowColor: blueF,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                        child: const Text('',
                          style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            fontSize: 20,),))
                ),
                SizedBox(width: 36.98,),
                SizedBox(
                    height:40,
                    width: 142,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          onPrimary: blueF,
                          shadowColor: blueF,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                        child: const Text('',
                          style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            fontSize: 20,),))
                ),
              ],
            ),
            SizedBox(height: 27,),
            Row(
              children: [
                SizedBox(width: 18,),
                SizedBox(
                    height:40,
                    width: 142,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          onPrimary: blueF,
                          shadowColor: blueF,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                        child: const Text('',
                          style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            fontSize: 20,),))
                ),
                SizedBox(width: 36.98,),
                SizedBox(
                    height:40,
                    width: 142,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          onPrimary: blueF,
                          shadowColor: blueF,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                        child: const Text('',
                          style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            fontSize: 20,),))
                ),
              ],
            ),
            SizedBox(height: 27,),
            Row(
              children: [
                SizedBox(width: 18,),
                SizedBox(
                    height:40,
                    width: 142,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          onPrimary: blueF,
                          shadowColor: blueF,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                        child: const Text('',
                          style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            fontSize: 20,),))
                ),
                SizedBox(width: 36.98,),
                SizedBox(
                    height:40,
                    width: 142,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          onPrimary: blueF,
                          shadowColor: blueF,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                        child: const Text('',
                          style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            fontSize: 20,),))
                ),
              ],
            ),
            SizedBox(height: 81,),


            SizedBox(height: 43,),
            Center(
                child: SizedBox(
                  height: 63,
                  width: 63,
                  child: ElevatedButton(
                    onPressed: () {},
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













            //send button



          ],
        ),

      ),
    );
  }
}