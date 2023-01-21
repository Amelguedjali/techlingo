import 'package:flutter/material.dart';
import 'package:projet_bdd/constant.dart';
import 'package:projet_bdd/pages/introduction6.dart';
import 'package:projet_bdd/pages/puzzle.dart';


class quiz_qcm extends StatefulWidget {
  const quiz_qcm({Key? key}) : super(key: key);

  @override
  State<quiz_qcm> createState() => _quiz_qcmState();
}

class _quiz_qcmState extends State<quiz_qcm> {
  var click= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(21, 29, 331.9, 0),
              child: IconButton(padding: EdgeInsets.zero,onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const introduction6()),
                );
              }, icon: Icon(Icons.arrow_back_ios),),
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
                    child: const Text('2 / 4',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'poppindBold',
                        fontSize: 24,
                      ),),
                  ),
                )
            ),
            SizedBox(height: 25,),
            Container(height: 236,
                width: 236,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                )
                ,child: Image.asset('assets/Rectangle 7.png')),
            SizedBox(height: 22,),
            SizedBox(
                height:40,
                width: 236,
                child: ElevatedButton(
                    onPressed: () {setState(() {
                      click=!click;
                    });},
                    style: ElevatedButton.styleFrom(
                      primary: (click==false)? color3: Colors.green,
                      onPrimary: blueF,
                      shadowColor: blueF,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),

                      ),
                    ),
                    child: const Text('RAM',
                    style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'poppins',
                    fontSize: 20,),))
            ),
            SizedBox(height: 20,),
            SizedBox(
                height:40,
                width: 236,
                child: ElevatedButton(
                    onPressed: () {setState(() {
                      click=!click;
                    });},
                    style: ElevatedButton.styleFrom(
                      primary: (click==false)? color3: Colors.red,
                      onPrimary: blueF,
                      shadowColor: blueF,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),

                      ),
                    ),
                    child: const Text('ROM',
                      style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'poppins',
                        fontSize: 20,),))
            ),
            SizedBox(height: 20,),
            SizedBox(
                height:40,
                width: 236,
                child: ElevatedButton(
                    onPressed: () {setState(() {
                      click=!click;
                    });},
                    style: ElevatedButton.styleFrom(
                      primary: (click==false)? color3: Colors.red,
                      onPrimary: blueF,
                      shadowColor: blueF,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),

                      ),
                    ),
                    child: const Text('SSD',
                      style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'poppins',
                        fontSize: 20,),))
            ),
            SizedBox(height: 43,),
            Center(
                child: SizedBox(
                  height: 63,
                  width: 63,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: IconButton(padding: EdgeInsets.zero,onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const puzzle()),
                      );
                    }, icon: Icon(Icons.arrow_forward_sharp,color: Colors.white,),),
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