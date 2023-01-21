import 'dart:math';
import 'package:techlingo/constant.dart';
import 'package:techlingo/pages/congratulations.dart';
import 'package:techlingo/pages/quiz_letters.dart';
import 'package:techlingo/pages/quiz_qcm.dart';
import 'package:techlingo/pages/admin_words.dart';

import 'package:flutter/material.dart';

class puzzle extends StatefulWidget {
  const puzzle({Key? key}) : super(key: key);

  @override
  State<puzzle> createState() => _puzzleState();
}

class _puzzleState extends State<puzzle> {
  String word = 'MIRA';
  List alphabet=[
    "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(21, 29, 331.9, 0),
            child: IconButton(padding: EdgeInsets.zero,onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const quiz_qcm()),
              );
            }, icon: Icon(Icons.arrow_back_ios),),
          ),

          SizedBox(
              height:63,
              width: 236,
              child: Container(
                height: 63,
                width: 236,
                decoration: BoxDecoration(//21, 41, 331.9, 0

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
          Image.asset('assets/Rectangle 7.png'),
          SizedBox(height: 17,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: word
                .split('')
                .map((e) => letter(e.toUpperCase(),
                !Game.selectedChar.contains(e.toUpperCase())))
                .toList(),
          ),
          SizedBox(height: 22,),

          //Now let's build the Game keyboard
          Card(
            elevation: 0,
            color: Colors.grey[50],
            //color: color2,
            child: SizedBox(
              width: double.infinity,
              height: 208.0,
              child: GridView.count(
                crossAxisCount: 7,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 7.0,
                padding: EdgeInsets.all(8.0),
                children: alphabet.map((e) {
                  return RawMaterialButton(
                    onPressed: Game.selectedChar.contains(e)
                        ? null // we first check that we didn't selected the button before
                        : () {
                      setState(() {
                        Game.selectedChar.add(e);
                        print(Game.selectedChar);
                        if (!word.split('').contains(e.toUpperCase())) {
                          Game.tries++;
                        }
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Text(
                      e,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'poppindBold'
                      ),
                    ),
                    fillColor: Game.selectedChar.contains(e)
                        ? blueF
                        :color3,
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(300, 0, 0, 0),
            child: IconButton(padding: EdgeInsets.zero,onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const congatulations()),
              );
            }, icon: Icon(Icons.arrow_forward_ios,),),
          ),

        ],
      ),

    );

  }
  Widget letter (String character, bool hidden){
    return Card(
      elevation: 3,
      child: Container(
        height: 40,
        width: 40,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color3,
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Visibility(
          visible: !hidden,
          child: Center(
            child: Text(character,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: 'poppindBold',
              ),),
          ),
        ),



      ),
    );

  }
}
class Game {
  static int tries = 3;
  static List selectedChar=[];


}









