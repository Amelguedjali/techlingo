// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:techlingo/pages/Dictionary.dart';
import 'package:techlingo/pages/Groups.dart';
import 'constant.dart';
import 'Profile.dart';
import'Groups.dart';
import 'package:getwidget/getwidget.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController= TextEditingController();
  final formKey= GlobalKey<FormState>();
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
                    onPressed: () => {},
                    icon: Column(
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: Color(0xFF2F89FC),
                          size: 20,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 8,
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
                    onPressed: () =>
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>
                                Dictionary())),
                    icon: Column(
                      children: [
                        Icon(
                          Icons.book_outlined,
                          color: Color(0xFF1E1D23),
                          size: 20,
                        ),
                        Text(
                          'Dictionary',
                          style: TextStyle(
                              fontSize: 8,
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
                    //HERE 
                    onPressed: () {
                      openDialog();
                    },
                    icon: Column(
                      children: [
                        Icon(
                          Icons.wechat_outlined,
                          color: Color(0xFF1E1D23),
                          size: 20,
                        ),
                        Text(
                          'Rooms',
                          style: TextStyle(
                              fontSize: 8,
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
                    onPressed: () =>
                        Navigator.of(context).push(
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
                              fontSize: 8,
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


        body: ListView(children: [ SafeArea(
            child: Padding(
              padding: EdgeInsets.all(12),

              child: Column(
                  children: <Widget>[
                    Container(

                      alignment: Alignment.topLeft,
                      height: 64,

                      child: Row(
                          children: [
                            Column(children: <Widget>[
                              SizedBox(height: 10),

                              Text('Hi Azerty,    ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,

                                  )
                              ),

                              Text('Thursday, 15 Dec',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    color: Colors.grey,

                                  )
                              ),

                            ]),
                            SizedBox(width: 170),
                            GFAvatar(

                                backgroundImage: AssetImage(
                                    'assets/Profile.jfif'),
                                shape: GFAvatarShape.standard
                            ),


                          ]
                      ),),


                    Container(

                      alignment: Alignment.topLeft,
                      child: Text('  Our Courses',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,

                          )
                      ),),


                    Column(
                        children: [SizedBox(height: 15),
                          Row(children: <Widget>[
                            SizedBox(width: 6),
                            Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(13),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: InkWell(
                                  splashColor: white,
                                  onTap: () {},
                                  child: Container(
                                    color: Colors.transparent,

                                    child: Ink.image(
                                        image: AssetImage('assets/Ai.png'),
                                        height: 189,
                                        width: 145,
                                        fit: BoxFit.cover,

                                        child: Container(

                                            alignment: Alignment.bottomCenter,

                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  top: 15, left: 11),
                                              height: 40,
                                              width: 150,


                                              color: Color.fromARGB(
                                                  170, 255, 255, 255),
                                              child: Text(
                                                'Artificial Intelligence                     ',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,),
                                              ),)
                                        )
                                    ),)


                              ),


                            ),

                            SizedBox(width: 30),
                            Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(13),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: InkWell(
                                  onTap: () {},
                                  child: Ink.image(
                                    image: AssetImage('assets/Hardware.png'),
                                    height: 189,
                                    width: 145,
                                    fit: BoxFit.cover,
                                    child: Container(

                                        alignment: Alignment.bottomCenter,

                                        child: Container(
                                          padding: EdgeInsets.only(
                                              top: 15, left: 45),
                                          height: 40,
                                          width: 150,


                                          color: Color.fromARGB(
                                              170, 255, 255, 255),

                                          child: Text('Hardware',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,),
                                          ),
                                        )
                                    ),


                                  )


                              ),

                            )
                          ]
                          ),

                          SizedBox(height: 15),
                          Container(child: Row(children: <Widget>[
                            SizedBox(width: 7),
                            Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(13),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: InkWell(
                                  onTap: () {},
                                  child: Ink.image(
                                      image: AssetImage('assets/Security.png'),
                                      height: 189,
                                      width: 145,
                                      fit: BoxFit.cover,
                                      child: Container(

                                          alignment: Alignment.bottomCenter,

                                          child: Container(
                                            padding: EdgeInsets.only(
                                                top: 15, left: 35),
                                            height: 40,
                                            width: 150,


                                            color: Color.fromARGB(
                                                170, 255, 255, 255),

                                            child: Text('Cyber Security',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,),
                                            ),
                                          ))

                                  )),


                            ),


                            SizedBox(width: 30),
                            Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(13),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: InkWell(
                                    onTap: () {},
                                    child: Ink.image(
                                        image: AssetImage(
                                            'assets/Software.png'),
                                        height: 189,
                                        width: 145,
                                        fit: BoxFit.cover,
                                        child: Container(

                                            alignment: Alignment.bottomCenter,

                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  top: 15, left: 45),
                                              height: 40,
                                              width: 150,


                                              color: Color.fromARGB(
                                                  170, 255, 255, 255),

                                              child: Text('Software',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,),
                                              ),
                                            )
                                        ))
                                )

                            ),

                          ]
                          )
                          ),
                          SizedBox(height: 15),
                          Container(child: Row(children: <Widget>[
                            SizedBox(width: 7),

                            Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(13),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: InkWell(
                                    onTap: () {

                                    },
                                    child: Ink.image(
                                        image: AssetImage(
                                            'assets/Internet.png'),
                                        height: 189,
                                        width: 145,
                                        fit: BoxFit.cover,

                                        child: Container(

                                            alignment: Alignment.bottomCenter,

                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  top: 15, left: 45),
                                              height: 40,
                                              width: 150,


                                              color: Color.fromARGB(
                                                  170, 255, 255, 255),

                                              child: Text('Internet',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,),
                                              ),
                                            )
                                        )))


                            ),

                            SizedBox(width: 30),
                            Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(13),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: InkWell(
                                    onTap: () {},
                                    child: Ink.image(
                                        image: AssetImage('assets/Design.png'),
                                        height: 189,
                                        width: 145,
                                        fit: BoxFit.cover,
                                        child: Container(

                                            alignment: Alignment.bottomCenter,

                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  top: 15, left: 53),
                                              height: 40,
                                              width: 150,
                                              color: Color.fromARGB(
                                                  170, 255, 255, 255),


                                              child: Text('Design',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,),
                                              ),
                                            )
                                        )))


                            ),

                          ]
                          )),


                        ])
                  ]
              ),
            ))
        ]));




  }
  Future openDialog() => showDialog(context: context,
      builder: (context) => AlertDialog(
        title: Text('Username',style : TextStyle(
          fontFamily: 'Poppins',
        )),
        content: Form(
          key: formKey,
          child: TextFormField(
            controller: nameController,
            validator:(value){
              if (value==null|| value.length<2){
                return "you must type your username";
              }
              return null;
        
            },
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: 'Enter your Username',
              hintStyle: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
        
          ),
        ),

        actions: [
          TextButton(onPressed: (){
            if(formKey.currentState!.validate()){
              String user_name=nameController.text;
              nameController.clear();
              Navigator.push(context, MaterialPageRoute(
              builder: (context)=> Groups(
                user_name: user_name,
              ),));

            }
            
          },
              child: Text('Submit',style : TextStyle(
                fontFamily: 'Poppins',
              )),),
        ],
      ));
}





