import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:techlingo/HomePage.dart';
import 'package:techlingo/Widgets.dart';
import 'constant.dart';

import 'package:getwidget/getwidget.dart';

class ChatRoomComputerScience extends StatefulWidget {
  const ChatRoomComputerScience({Key? key}) : super(key: key);

  @override
  State<ChatRoomComputerScience> createState() => _ChatRoomComputerScienceState();
}

class _ChatRoomComputerScienceState extends State<ChatRoomComputerScience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
                  ),
                  SizedBox(width: 2,),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/Software.png"),
                    maxRadius: 20,
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Computer Science",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600, fontFamily: 'Poppins'),),
                        SizedBox(height: 0),
                        Text("20 Online",style: TextStyle(fontSize: 14,fontFamily: 'Poppins'),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height-140,

                child: ListView(
                    shrinkWrap: true,
                    children:[
                      buildOwnMessage(context ,'Azerty',  'Lorem ipsum dolor sit amet, consec...', '23:10'),

                      buildOwnMessage(context ,'Azerty',  'Lorem ipsum dolor sit amet, consec...', '23:10'),

                      buildReplyMessage(context ,'Azerty', 'Lorem ipsum dolor sit amet, consec.Lorem ipsum dolor sit amet, consec.Lorem ipsum dolor sit amet, consec.', '23:10'),
                      buildReplyMessage(context ,'Azerty',  'Lorem ipsum dolor sit amet, consec.', '23:10'),

                      buildOwnMessage(context ,'Azerty',  'Lorem ipsum dolor sit amet, consec.Lorem ipsum dolor sit amet, consec.Lorem ipsum dolor sit amet, consec.', '23:10'),

                      buildReplyMessage(context , 'Azerty', 'Lorem ipsum dolor sit amet, consec.', '23:10'),

                      buildOwnMessage(context ,'Azerty',  'Lorem ipsum dolor sit amet, consec...', '23:10'),

                      buildReplyMessage(context ,'Azerty',  'Lorem ipsum dolor sit amet, consec.Lorem ipsum dolor sit amet, consec.Lorem ipsum dolor sit amet, consec.', '23:10'),

                      buildOwnMessage(context , 'Azerty', 'Lorem ipsum dolor sit amet, consec...', '23:10'),

                      buildReplyMessage(context , 'Azerty', 'Lorem ipsum dolor sit amet, consec.', '23:10'),

                      buildOwnMessage(context , 'Azerty', 'Lorem ipsum dolor sit amet, consec...', '23:10'),

                      buildReplyMessage(context , 'Azerty', 'Lorem ipsum dolor sit amet, consec.Lorem ipsum dolor sit amet, consec.Lorem ipsum dolor sit amet, consec.', '23:10'),

                      buildOwnMessage(context ,'Azerty',  'Lorem ipsum dolor sit amet, consec...', '23:10'),


                    ]

                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [

                    Container(

                      width: MediaQuery.of(context).size.width -10,
                      child: Card(
                          margin: EdgeInsets.only(left:10, right: 2,bottom: 6 ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),

                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.multiline ,
                            maxLines: 6,
                            minLines : 1,

                            decoration: InputDecoration(
                              hintText: " Type a message",

                              border: InputBorder.none,
                              suffixIcon:IconButton(
                                onPressed: (){},
                                icon:Icon(Icons.send_outlined,
                                  color: black,
                                ),),


                              contentPadding: EdgeInsets.all(5),
                            ),
                          )
                      ),
                    ),


                  ],
                ),
              )
            ],
          ),
        )



    );

  }
}