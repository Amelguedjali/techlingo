import 'package:flutter/material.dart';
import 'package:techlingo/pages/Widgets.dart';
import 'package:techlingo/pages/constant.dart';
import 'package:techlingo/pages/Profile.dart';
import 'package:techlingo/pages/HomePage.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
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
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            HomePage())),
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
          toolbarHeight: 60,


          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,

            ),
              onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),

        ),

        body: Container(

            padding: EdgeInsets.only(left: 15, top: 20, right: 15),
            child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },

                child: ListView(

                  children: [
                    Center(
                      child: Stack(

                        children: [

                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(


                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/Profile.jfif')

                              ),


                            ),
                          ),


                //email textfield


                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 32,
                          width: 32 ,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,

                            ),
                            color: Colors.grey[350],
                          ),
                          child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),


                        ),)
                        ],
                      ),



        ),      //Login


                SizedBox(height:10 ),
                Container(

                child : Center(
                child : Text('Azerty Ytreza',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),

                )),
                SizedBox(height: 8),
                Container(

                child : Center(
                child : Text('@azery',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.grey[400],
                    fontSize: 13,
                  ),
                ),
                ),),



                SizedBox(height: 30),
                    buildTextField("First name", "Azerty"),
                    buildTextField("Last name", "Ytreza"),
                    buildTextField("Phone number", "0000000000"),
                    buildTextField("Email", "azerty@gmail.com",),
                SizedBox(height: 20),

                    ConfirmButton(context),
                  ],
                ))));
  }
}

