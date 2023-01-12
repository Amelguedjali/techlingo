import 'package:flutter/material.dart';
import 'constant.dart';

class delete_word extends StatefulWidget {
  const delete_word({Key? key}) : super(key: key);

  @override
  State<delete_word> createState() => _delete_wordState();
}

class _delete_wordState extends State<delete_word> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            height: 230,
            width: 409,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(320, 15, 0, 36),
                  child: Icon(Icons.cancel_outlined),
                ),
                const Text('Are you sure you wish to delete this word',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'poppins',
                    fontSize: 20,
                  ),),
                SizedBox(height: 24,),
                Row(
                  children: [
                    SizedBox(width: 12,),
                    SizedBox(
                        height:50,
                        width: 160,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: Colors.white,
                              side: BorderSide(width:1, color:red),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),

                              ),
                            ),
                            child: const Text('Cancel',
                              style:TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: 'poppins'
                              ),))
                    ),
                    SizedBox(width: 15,),
                    SizedBox(
                        height:50,
                        width: 160,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),

                              ),
                            ),
                            child: const Text('Delete',
                              style:TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: 'poppins'
                              ),))
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}