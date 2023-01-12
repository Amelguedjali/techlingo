import 'package:flutter/material.dart';
import 'constant.dart';


class oups extends StatefulWidget {
  const oups({Key? key}) : super(key: key);

  @override
  State<oups> createState() => _oupsState();
}

class _oupsState extends State<oups> {
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
            Text("Oups !",
              style: TextStyle(
                fontFamily: 'poppindBold',
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),),
            //SizedBox(height: 47,),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 20, 75.17, 44.79),
              child: Image.asset('assets/caracter1.png',),
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
                    child: const Text('Restart',
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