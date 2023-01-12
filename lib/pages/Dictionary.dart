import 'package:flutter/material.dart';
import 'package:techlingo/pages/chatroomComputerScience.dart';
import 'package:techlingo/pages/chatroomDesign.dart';
import 'package:techlingo/pages/chatroomMobileDev.dart';
import 'package:techlingo/pages/chatroomSecurity.dart';
import 'package:techlingo/pages/chatroomWebDev.dart';
import 'package:techlingo/pages/chatroomAI.dart';
import 'constant.dart';
import 'package:techlingo/pages/Profile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:techlingo/pages/HomePage.dart';
import 'package:techlingo/pages/Widgets.dart';
import'package:techlingo/pages/Groups.dart';

class Dictionary extends StatefulWidget {
  const Dictionary({Key? key}) : super(key: key);

  @override
  State<Dictionary> createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  TextEditingController nameController= TextEditingController();
  final formKey= GlobalKey<FormState>();
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
                          color: Color(0xFF2F89FC),
                          size: 20 ,
                        ),
                        Text(
                          'Dictionary',
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

                                        Text('  Dictionary',
                                            style: TextStyle(
                                              fontFamily:'Poppins',
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,

                                            )
                                        ),

                                      ]),
                                      SizedBox(width: 157),
                                      GFAvatar(

                                        backgroundImage:AssetImage('assets/Profile.jfif'),
                                        shape: GFAvatarShape.standard,
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
                                                    image: AssetImage('assets/Ai.png'),

                                                  ),)),

                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        ' Machine Learning',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),


                                                    ])
                                            ),

                                            Center(child:

                                            Positioned(
                                              bottom: 4,
                                              right: 10,
                                              child:
                                              Icon(
                                                Icons.bookmark_border,
                                                size: 30,
                                                color: Color(0xFF2F89FC),
                                              ),

                                            )

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
                                                    image: AssetImage('assets/Ai.png'),

                                                  ),)),

                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        ' Machine Learning',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),


                                                    ])
                                            ),

                                            Center(child:

                                              Positioned(
                                                bottom: 4,
                                                right: 10,
                                                child:
                                                    Icon(
                                                      Icons.bookmark_border,
                                                      size: 30,
                                                      color: Color(0xFF2F89FC),
                                                    ),

                                                    )

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
                                                    image: AssetImage('assets/Ai.png'),

                                                  ),)),

                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        ' Machine Learning',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),


                                                    ])
                                            ),

                                            Center(child:

                                            Positioned(
                                              bottom: 4,
                                              right: 10,
                                              child:
                                              Icon(
                                                Icons.bookmark_border,
                                                size: 30,
                                                color: Color(0xFF2F89FC),
                                              ),

                                            )

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
                                                    image: AssetImage('assets/Ai.png'),

                                                  ),)),

                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        ' Machine Learning',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),


                                                    ])
                                            ),

                                            Center(child:

                                            Positioned(
                                              bottom: 4,
                                              right: 10,
                                              child:
                                              Icon(
                                                Icons.bookmark_border,
                                                size: 30,
                                                color: Color(0xFF2F89FC),
                                              ),

                                            )

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
                                                    image: AssetImage('assets/Ai.png'),

                                                  ),)),

                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        ' Machine Learning',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),


                                                    ])
                                            ),

                                            Center(child:

                                            Positioned(
                                              bottom: 4,
                                              right: 10,
                                              child:
                                              Icon(
                                                Icons.bookmark_border,
                                                size: 30,
                                                color: Color(0xFF2F89FC),
                                              ),

                                            )

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
                                                    image: AssetImage('assets/Ai.png'),

                                                  ),)),

                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        ' Machine Learning',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),


                                                    ])
                                            ),

                                            Center(child:

                                            Positioned(
                                              bottom: 4,
                                              right: 10,
                                              child:
                                              Icon(
                                                Icons.bookmark_border,
                                                size: 30,
                                                color: Color(0xFF2F89FC),
                                              ),

                                            )

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
                                                    image: AssetImage('assets/Ai.png'),

                                                  ),)),

                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        ' Machine Learning',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),


                                                    ])
                                            ),

                                            Center(child:

                                            Positioned(
                                              bottom: 4,
                                              right: 10,
                                              child:
                                              Icon(
                                                Icons.bookmark_border,
                                                size: 30,
                                                color: Color(0xFF2F89FC),
                                              ),

                                            )

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
                                                    image: AssetImage('assets/Ai.png'),

                                                  ),)),

                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text(
                                                        ' Machine Learning',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: black,
                                                          fontSize: 16,
                                                        ),
                                                      ),


                                                    ])
                                            ),

                                            Center(child:

                                            Positioned(
                                              bottom: 4,
                                              right: 10,
                                              child:
                                              Icon(
                                                Icons.bookmark_border,
                                                size: 30,
                                                color: Color(0xFF2F89FC),
                                              ),

                                            )

                                            ),



                                          ]) )

                              ),


                            ),




                          ]) )

                ]),

              )])
    );




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





