import 'package:flutter/material.dart';
import 'package:techlingo/Groups.dart';
import 'package:techlingo/HomePage.dart';
import 'package:techlingo/Update_Profile.dart';
import 'package:techlingo/login.dart';
import 'constant.dart';
import 'package:techlingo/Groups.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
              onPressed: () {
                openDialog();
              },
              icon: Column(
                children: [
                  Icon(
                    Icons.wechat_outlined,
                    color:Color(0xFF1E1D23),
                    size: 20,
                  ),
                  Text(
                    'Rooms',
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
                    color: Color(0xFF2F89FC),
                    size: 20,
                  ),
                  Text(
                    'Profile',
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


    ])),







      backgroundColor: white,

      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,

        title: Text("Profile",
        style: TextStyle(
          color: black,
          fontFamily: 'Poppins',
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),),

        centerTitle: true,

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: black,

          ),
          onPressed: () {} ,
        ),

      ),

     body: ListView (

         children: [

     Column(
     children : [ElevatedButton(
        style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(13),
        fixedSize: Size(334, 89),
        primary: blueF,
        onPrimary: Colors.grey[700],
        elevation: 0,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
        ),

        onPressed: () {},

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
                           image: AssetImage('assets/Profile.jfif'),

                         ),)),

                   SizedBox(width: 10),
                   Expanded(
                       child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[

                             Text(
                               'Ytreza Azerty',
                               style: TextStyle(
                                 fontFamily: 'Poppins',
                                 color:white,
                                 fontSize: 14,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                             SizedBox(height: 4),
                             Text(
                               '@A_zerty',
                               style: TextStyle(
                                 fontFamily: 'Poppins',
                                 color:greyC,
                                 fontSize: 11,
                                 fontWeight: FontWeight.normal,
                               ),
                             ),



                           ])
                   ),


                 ]) )
      ),


       SizedBox(height: 34),
        Card(
        child : Container(
        color: Colors.white,
        padding: EdgeInsets.all(0),
        child :ListTile(
             leading: Icon(Icons.account_circle_rounded,size: 40,color: Colors.grey
             ),

             title: Text('My Account',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 13,color: black)),
             subtitle: Text('Make changes to your account',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 11,color: Color(0xFFABABAB))),
             onTap : () {
               Navigator.push(context ,MaterialPageRoute(builder: (context)=> UpdateProfile()));
             },
          trailing:Row( mainAxisSize: MainAxisSize.min,
            children :[ Icon( Icons.report_problem_outlined,color: Colors.redAccent),Icon(Icons.arrow_forward_ios,color: black),
            ]),


        )

        )
     ),


    Card(
    child : Container(
    color: Colors.white,
    padding: EdgeInsets.all(0),
    child :ListTile(
             leading: Icon(Icons.logout_rounded,size: 40,color: Colors.grey),
             trailing: Icon(Icons.arrow_forward_ios,color: black),
             title: Text('Log out',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 13,color: black)),
             subtitle: Text('Further secure your account for safety',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 11,color: Color(0xFFABABAB))),
             onTap : () {
               Navigator.push(context ,MaterialPageRoute(builder: (context)=> LoginPage()));
             },)))],




     )
    ]
     ),


    );






  }
  Future openDialog() => showDialog(context: context,
      builder: (context) => AlertDialog(
        title: Text('Username',style : TextStyle(
          fontFamily: 'Poppins',
        )),
        content: TextField(
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: 'Enter your Username',
            hintStyle: TextStyle(
              fontFamily: 'Poppins',
            ),
          ),

        ),

        actions: [
          TextButton(onPressed: (){},
            child: Text('Submit',style : TextStyle(
              fontFamily: 'Poppins',
            )),),
        ],
      ));

}