import 'package:flutter/material.dart';
import 'package:techlingo/constant.dart';
import 'package:flutter/src/material/colors.dart';


class quiz_letters extends StatefulWidget {
  const quiz_letters({Key? key}) : super(key: key);

  @override
  State<quiz_letters> createState() => _quiz_lettersState();
}

class _quiz_lettersState extends State<quiz_letters> {
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
                    child: const Text('3 / 4',
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
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 44,),
                SizedBox(
                    height:40,
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
                        child: const Text('R',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('N',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                SizedBox(width: 44,),
                SizedBox(
                    height:40,
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
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('C',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                SizedBox(width: 44,),
                SizedBox(
                    height:40,
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
                        child: const Text('M',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('R',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
            SizedBox(height: 21),
            Row(
              children: [
                SizedBox(width: 20,),
                SizedBox(
                    height:40,
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
                        child: const Text('R',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('K',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('A',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('O',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('B',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
                    width: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: color4,
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
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('C',
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
            SizedBox(height: 8,),
            Row(
              children: [
                SizedBox(width: 20,),
                SizedBox(
                    height:40,
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
                        child: const Text('E',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
                    width: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: color4,
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
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('M',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('S',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('E',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('O',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('Y',
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
            SizedBox(height: 8,),
            Row(
              children: [
                SizedBox(width: 20,),
                SizedBox(
                    height:40,
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
                        child: const Text('D',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('A',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
                    width: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: color4,
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
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('S',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
                    width: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: color4,
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
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
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
                        child: const Text('M',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppindBold',
                            fontSize: 14,
                          ),),
                      ),
                    )
                ),
                SizedBox(width: 7,),
                SizedBox(
                    height:40,
                    width: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        primary: color4,
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

          ],
        ),

      ),
    );
  }
}