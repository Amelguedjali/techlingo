import 'package:flutter/material.dart';
import 'package:techlingo/pages/HomePageAdmin.dart';
import 'package:techlingo/pages/Widgets.dart';
import 'package:techlingo/constant.dart';
import 'package:techlingo/pages/Profile.dart';
import 'package:techlingo/pages/HomePage.dart';
import 'package:getwidget/getwidget.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:socket_io_client/socket_io_client.dart'as IO;
  


class Analystics extends StatefulWidget {
  const Analystics({Key? key}) : super(key: key);
  @override
  State<Analystics> createState() => _AnalysticsState();
}

class _AnalysticsState extends State<Analystics> {
  IO.Socket? socket;
  var total; 
 
  
  @override
  void initState() {
    // implement initState
    super.initState();
    connect();
  }

  void connect() {
    socket = IO.io("http://localhost:3000", <String, dynamic>{
      "transports":["websocket"],
      "autoConnect":false,

    });
    socket!.connect();

    socket!.onConnect((_){
      print("connected into frontend ");
      socket!.on("totalnumber",(total_number)=>{
        total=total_number,
         setState(() {
      total; 
    }),
        print(total),
      });
      
      

        
      });


  
}


      

  @override
    Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: color1,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                TextButton.icon(
                  onPressed: () =>  Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>
                 Analystics())),
                  icon: Column(
                    children: [
                      Icon(
                        Icons.analytics_outlined,
                        color: Color(0xFF2F89FC),
                        size: 20,
                      ),
                      Text(
                        'Analystics',
                        style: TextStyle(
                            fontSize: 8 ,
                            color: Color(0xFF2F89FC),
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  label: Text(
                    '', //'Label',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),



                TextButton.icon(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                          HomePageAdmin())),
                  icon: Column(
                    children: [
                      Icon(
                        Icons.category_outlined,
                        color: Color(0xFF1E1D23),
                        size: 20 ,
                      ),
                      Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 8 ,
                            color: Color(0xFF1E1D23),
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  label: Text(
                    '', //'Label',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),


                TextButton.icon(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                          ProfilePage())),
                  icon: Column(
                    children: [
                      Icon(
                        Icons.person_outline,
                        color: Color(0xFF1E1D23),
                        size: 20,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 8 ,
                            color: Color(0xFF1E1D23),
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  label: Text(
                    '', //'Label',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),


              ])),

      backgroundColor: white,


      body: SafeArea(
          child :Padding(
              padding : EdgeInsets.all(12),

              child : Column(
                  children: <Widget> [
                    Container(

                      alignment: Alignment.topLeft,
                      height: 64,

                      child:Row(
                          children : [
                            Column(children: <Widget> [
                              SizedBox(height: 10),

                              Text('Hi admin,    ',
                                  style: TextStyle(
                                    fontFamily:'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,

                                  )
                              ),

                              Text('Thursday, 15 Dec',
                                  style: TextStyle(
                                    fontFamily:'Poppins',
                                    fontSize: 14,
                                    color: Colors.grey,

                                  )
                              ),

                            ]),
                            SizedBox(width: 170),
                            GFAvatar(

                                backgroundImage:AssetImage('assets/Profile.jfif'),
                                shape: GFAvatarShape.standard
                            ),

                          ]
                      ),),

                    SizedBox(
                      height:80,
                      width: 316,
                      child: Container(
                        alignment: Alignment.topLeft,

                          decoration: BoxDecoration(

                            boxShadow: [
                              BoxShadow(
                                color: color2,

                              ),

                            ],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),



                            child: Column(
                            children : [

                                SizedBox(height: 18 ),
                                Text('       Total number of users ',
                                    style: TextStyle(
                                      fontFamily:'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,

                                    )
                                ),


                              SizedBox(height: 6 ),
                                Text('$total             ',
                                    style: TextStyle(
                                      fontFamily:'Poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )
                                ),

                              ]


                          )


                      ),

                    ),


                    SizedBox(height: 10),
                    SizedBox(
                      height:220,
                      width: 316,
                      child: Container(
                          alignment: Alignment.topLeft,

                          decoration: BoxDecoration(

                            boxShadow: [
                              BoxShadow(
                                color: color2,

                              ),

                            ],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),



                          child:  Column(children : [Column(
                              children : [



                                SizedBox(height: 18 ),
                                Text('Use time per day',
                                    style: TextStyle(
                                      fontFamily:'Poppins',
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,

                                    )
                                ),


                                SizedBox(height: 6 ),
                                Text('This week                               ',
                                    style: TextStyle(
                                      fontFamily:'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    )
                                ),




                              ]


                          ),


                            buildChart(),


                          ])
                      ),

                    ),


                    SizedBox(height: 10),
                    SizedBox(
                      height:260,
                      width: 316,
                      child: Container(
                          alignment: Alignment.topLeft,

                          decoration: BoxDecoration(

                            boxShadow: [
                              BoxShadow(
                                color: color2,

                              ),

                            ],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),



                          child: Column(
                              children : [

                                SizedBox(height: 18 ),
                                Text('Users per category',
                                    style: TextStyle(
                                      fontFamily:'Poppins',
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,

                                    )
                                ),

                                SizedBox(height: 30),

                                buildPie(context),


                              ]


                          )


                      ),

                    ),


                   ])    ))




    );
  }
}

  
