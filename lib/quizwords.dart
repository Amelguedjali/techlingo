import 'package:flutter/material.dart';
import 'constant.dart';


class quiz_words extends StatefulWidget {
  const quiz_words({Key? key}) : super(key: key);

  @override
  State<quiz_words> createState() => _quiz_wordsState();
}

class _quiz_wordsState extends State<quiz_words> {
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
                    child: const Text('4 / 4',
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
            Row(
              children: [
                SizedBox(width: 20,),
                SizedBox(
                    height:39,
                    width: 36,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('for',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 22,),
                SizedBox(
                    height:39,
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('accronym',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 22,),
                SizedBox(
                    height:39,
                    width: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('the',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 22,),
                SizedBox(
                    height:39,
                    width: 28,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('is',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 22,),
                SizedBox(
                    height:39,
                    width: 39,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('API',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 17,),
            Row(
              children: [
                SizedBox(width: 20,),
                SizedBox(
                    height:39,
                    width: 98,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 10,),
                SizedBox(
                    height:39,
                    width: 117,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 10,),
                SizedBox(
                    height:39,
                    width: 86,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 17,),
            Row(
              children: [
                SizedBox(width: 20,),
                SizedBox(
                    height:39,
                    width: 26,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('a',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 50.5,),
                SizedBox(
                    height:39,
                    width: 79,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('software',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 56.5,),
                SizedBox(
                    height:39,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 89,),
            Row(
              children: [
                SizedBox(width: 20,),
                SizedBox(
                    height:39,
                    width: 98,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('application',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 13.5,),
                SizedBox(
                    height:39,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('intermediary',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 14.5,),
                SizedBox(
                    height:39,
                    width: 81,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('interface',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 12,),
            Row(
              children: [
                SizedBox(width: 130,),
                SizedBox(
                    height:39,
                    width: 117,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: Colors.grey[200],
                        onPrimary: blueF,
                        shadowColor: blueF,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                      child: Center(
                        child: const Text('programming',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}