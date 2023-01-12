import 'package:flutter/material.dart';
import 'constant.dart';


class buildOtherMessagee extends StatelessWidget{
  final String sender;
  final String msg;
  final String time;
  const buildOtherMessagee({Key? key, required this.msg , required this.sender, required this.time}): super (key: key);
   


  @override
  Widget build(BuildContext context) {
    return Align(


      alignment: Alignment.centerLeft,




      child : ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width - 45,
      ),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 10,
                  top: 2,
                  bottom: 10

                ),

                child: Text(sender ,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color:black,

                  ),)),


            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 30,
                top: 20,
                bottom: 20,
              ),
              child: Text(
                msg+ '      ',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',

                ),
              ),
            ),
            Positioned(
              bottom: 4,
              right: 10,
              child: Text(
                time,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

}}