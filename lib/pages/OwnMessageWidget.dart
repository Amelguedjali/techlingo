import 'package:flutter/material.dart';
import 'package:techlingo/constant.dart';


class buildOwnMessagee extends StatelessWidget{
  final String sender;
  final String msg;
  final String time;
  const buildOwnMessagee({Key? key, required this.msg , required this.sender, required this.time}): super (key: key);
   


  @override
  Widget build(BuildContext context) {
    return Align(

        alignment: Alignment.centerRight,



        child : ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),

        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: blueF,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 30,
                    top: 2,

                  ),

                  child: Text(sender ,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                    color: color1,

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
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),

              SizedBox(height: 50),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        fontSize: 13,
                        color: white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.done,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),);
  }
}