import 'package:flutter/material.dart';
import 'package:techlingo/chatroomComputerScience.dart';
import 'package:techlingo/chatroomDesign.dart';
import 'package:techlingo/chatroomMobileDev.dart';
import 'package:techlingo/chatroomSecurity.dart';
import 'package:techlingo/chatroomWebDev.dart';
import 'constant.dart';
import 'Profile.dart';
import 'package:getwidget/getwidget.dart';
import 'HomePage.dart';
import 'package:techlingo/Widgets.dart';
import 'chatroomAI.dart';
class Groups extends StatefulWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            HomePage())),

                    icon: Column(
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: Color(0xFF1E1D23),
                          size: 20,
                        ),

                        Text(
                          'Home',
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
                    onPressed: (){},
                    icon: Column(
                      children: [
                        Icon(
                          Icons.book_outlined,
                          color: Color(0xFF1E1D23),
                          size: 20 ,
                        ),
                        Text(
                          'Dictionary',
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
                    onPressed: () => {},
                    icon: Column(
                      children: [
                        Icon(
                          Icons.wechat_outlined,
                          color:Color(0xFF2F89FC),
                          size: 20,
                        ),
                        Text(
                          'Rooms',
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

        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight:35,

          centerTitle: true,

          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: black,
            ),

            onPressed: () {} ,
          ),

        ),
        body:   Stack(
            children: [
              Container(

                width: MediaQuery.of(context).size.width,

                height: MediaQuery.of(context).size.height,

                child: ListView(
                    shrinkWrap: true,children : [ SafeArea(
                    child :Padding(
                        padding : EdgeInsets.all(10),

                        child : Column(
                            children: <Widget> [
                              Container(

                                alignment: Alignment.topLeft,
                                height:50 ,

                                child:Row(
                                    children : [
                                      Column(children: <Widget> [
                                        SizedBox(height: 10),

                                        Text('  Chat',
                                            style: TextStyle(
                                              fontFamily:'Poppins',
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,

                                            )
                                        ),

                                      ]),
                                      SizedBox(width: 220),
                                      GFAvatar(

                                        backgroundImage:AssetImage('assets/Profile.jfif'),
                                        shape: GFAvatarShape.circle,
                                      ),

                                    ]
                                ),),

                            ]
                        ))),
                  Container(

                    decoration: BoxDecoration(
                      color:Color(0xFFE4E4E4),
                      borderRadius: BorderRadius.circular(32),
                    ),

                    child: TextField(

                      decoration: InputDecoration(
                        hintText: 'Search',
                        helperStyle: TextStyle(fontSize: 15 , fontFamily: 'Poppins'),
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  Container(

                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,

                      height: MediaQuery.of(context).size.height,

                      child:Column(
                          children : [
                            Column(children: <Widget> [
                              SizedBox(height: 15),

                              Text('Groups',
                                  style: TextStyle(
                                    fontFamily:'Poppins',
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,

                                  )
                              ),

                            ]),



                            SizedBox(height: 20),

                            Center(

                              child : ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(13),
                                    fixedSize: Size(330, 66),
                                    primary: Color(0xFFEBEBEB),
                                    onPrimary: Colors.grey[700],
                                    elevation: 0,

                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
                                  ),

                                  onPressed: () => Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) =>
                                          ChatRoomAI())),

                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:10),

                                      child: Row(

                                          children:[
                                            Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage('assets/Ai.png'),

                                                  ),)),

                                            SizedBox(width: 10),
                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        'Ai',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Text(
                                                        'Rafik: lorem inspum dolor',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 12,
                                                        ),
                                                      ),



                                                    ])
                                            ),

                                            Column(children: [Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0
                                              ),
                                              child: Text(
                                                'Vu',
                                                style: TextStyle(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                              Positioned(
                                                bottom: 4,
                                                right: 10,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '',
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        color: white,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                      Icons.done_all,
                                                      size: 20,
                                                      color: blueF,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],



                                            ),



                                          ]) )

                              ),


                            ),
                            SizedBox(height: 15),

                            Center(

                              child : ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(13),
                                    fixedSize: Size(330, 66),
                                    primary: Color(0xFFEBEBEB),
                                    onPrimary: Colors.grey[700],
                                    elevation: 0,

                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
                                  ),

                                  onPressed: () => Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) =>
                                          ChatRoomSecurity())),

                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:10),

                                      child: Row(

                                          children:[

                                            Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage('assets/Security.png'),

                                                  ),)),

                                            SizedBox(width: 10),
                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        'Cyber Security',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Text(
                                                        'Rafik: lorem inspum dolor',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 12,
                                                        ),
                                                      ),



                                                    ])
                                            ),

                                            Column(children: [Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0
                                              ),
                                              child: Text(
                                                'Vu',
                                                style: TextStyle(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                              Positioned(
                                                bottom: 4,
                                                right: 10,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '',
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
                                                      color: blueF,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],



                                            ),



                                          ]) )

                              ),


                            ),
                            SizedBox(height: 15),

                            Center(

                              child : ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(13),
                                    fixedSize: Size(330, 66),
                                    primary: Color(0xFFEBEBEB),
                                    onPrimary: Colors.grey[700],
                                    elevation: 0,

                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
                                  ),

                                  onPressed: () => Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) =>
                                          ChatRoomComputerScience())),

                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:10),

                                      child: Row(

                                          children:[
                                            Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage('assets/Software.png'),

                                                  ),)),

                                            SizedBox(width: 10),

                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        'Computer Science',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Text(
                                                        'Rafik: lorem inspum dolor',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 12,
                                                        ),
                                                      ),



                                                    ])
                                            ),

                                            Column(children: [Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0
                                              ),
                                              child: Text(
                                                'Vu',
                                                style: TextStyle(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                              Positioned(
                                                bottom: 4,
                                                right: 10,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '',
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
                                                      color: blueF,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],



                                            ),



                                          ]) )

                              ),


                            ),
                            SizedBox(height: 15),

                            Center(

                              child : ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(13),
                                    fixedSize: Size(330, 66),
                                    primary: Color(0xFFEBEBEB),
                                    onPrimary: Colors.grey[700],
                                    elevation: 0,

                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
                                  ),

                                  onPressed: () => Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) =>
                                          ChatRoomDesign())),

                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:10),

                                      child: Row(

                                          children:[
                                            Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage('assets/Design.png'),

                                                  ),)),

                                            SizedBox(width: 10),

                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        'Design',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Text(
                                                        'Rafik: lorem inspum dolor',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 12,
                                                        ),
                                                      ),



                                                    ])
                                            ),

                                            Column(children: [Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0
                                              ),
                                              child: Text(
                                                'Vu',
                                                style: TextStyle(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                              Positioned(
                                                bottom: 4,
                                                right: 10,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '',
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
                                                      color: blueF,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],



                                            ),



                                          ]) )

                              ),


                            ),
                            SizedBox(height: 15),

                            Center(

                              child : ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(13),
                                    fixedSize: Size(330, 66),
                                    primary: Color(0xFFEBEBEB),
                                    onPrimary: Colors.grey[700],
                                    elevation: 0,

                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
                                  ),

                                  onPressed: () => Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) =>
                                          ChatRoomWebDev())),

                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:10),

                                      child: Row(

                                          children:[
                                            Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage('assets/Software.png'),

                                                  ),)),

                                            SizedBox(width: 10),

                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        'Web Dev',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Text(
                                                        'Rafik: lorem inspum dolor',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 12,
                                                        ),
                                                      ),



                                                    ])
                                            ),

                                            Column(children: [Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0
                                              ),
                                              child: Text(
                                                'Vu',
                                                style: TextStyle(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                              Positioned(
                                                bottom: 4,
                                                right: 10,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '',
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
                                                      color: blueF,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],



                                            ),



                                          ]) )

                              ),


                            ),
                            SizedBox(height: 15),
                            Center(

                              child : ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(13),
                                    fixedSize: Size(330, 66),
                                    primary: Color(0xFFEBEBEB),
                                    onPrimary: Colors.grey[700],
                                    elevation: 0,

                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
                                  ),

                                  onPressed: () => Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) =>
                                          ChatRoomMobileDev())),

                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:10),

                                      child: Row(

                                          children:[
                                            Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage('assets/Software.png'),

                                                  ),)),

                                            SizedBox(width: 10),

                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        'Mobile Dev',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Text(
                                                        'Rafik: lorem inspum dolor',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 12,
                                                        ),
                                                      ),



                                                    ])
                                            ),

                                            Column(children: [Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0
                                              ),
                                              child: Text(
                                                'Vu',
                                                style: TextStyle(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                ),
                                              ),
                                            ),
                                              Positioned(
                                                bottom: 4,
                                                right: 10,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '',
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
                                                      color: blueF,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],



                                            ),



                                          ]) )

                              ),


                            ),





                          ]) )

                ]),

              )])
    );




  }
}