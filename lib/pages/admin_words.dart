import 'package:flutter/material.dart';
import 'package:techlingo/constant.dart';

class admin_words extends StatefulWidget {
  const admin_words({Key? key}) : super(key: key);

  @override
  State<admin_words> createState() => _admin_wordsState();
}

class _admin_wordsState extends State<admin_words> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 41,
            ),
            Row(
              children: [
                SizedBox(
                  width: 17,
                ),
                Icon(
                  Icons.arrow_back_ios,
                ),
                SizedBox(width: 21),
                SizedBox(
                    height: 63,
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
                        child: const Text(
                          '1 / 10',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 24,
                          ),
                        ),
                      ),
                    )),
                SizedBox(width: 20),
                Column(
                  children: [
                    Icon(Icons.create_outlined),
                    SizedBox(
                      height: 12,
                    ),
                    Icon(
                      Icons.delete_outline_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Icon(Icons.add_circle_outline_sharp),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 82,
            ),
            Container(
                height: 236,
                width: 236,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Image.asset('assets/Rectangle 7.png')),
            SizedBox(
              height: 50,
            ),
            Text(
              'RAM',
              style: TextStyle(
                fontFamily: 'poppindBold',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(37, 0, 37, 42),
              child: Text(
                'Random Access Memory',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Center(
                child: SizedBox(
              height: 63,
              width: 63,
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.white,
                ),
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
            )),

            SizedBox(
              height: 22,
            ),

            //send button
          ],
        ),
      ),
    );
  }
}
