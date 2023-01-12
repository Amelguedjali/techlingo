import 'package:flutter/material.dart';
import 'constant.dart';


class congatulations extends StatefulWidget {
  const congatulations({Key? key}) : super(key: key);

  @override
  State<congatulations> createState() => _congatulationsState();
}

class _congatulationsState extends State<congatulations> {
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
            Text("Congatulations !",
              style: TextStyle(
                fontFamily: 'poppindBold',
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),),
            //SizedBox(height: 47,),
            Padding(
              padding: const EdgeInsets.fromLTRB(54.45, 20, 47.86, 38.28),
              child: Image.asset('assets/caracter2.png',),
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
                    child: const Text('Go to the next level',
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