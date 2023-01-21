import 'package:flutter/material.dart';
import 'package:projet_bdd/constant.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:projet_bdd/pages/puzzle.dart';


class inside_a_domain extends StatefulWidget {
  const inside_a_domain({Key? key}) : super(key: key);

  @override
  State<inside_a_domain> createState() => _inside_a_domainState();
}

class _inside_a_domainState extends State<inside_a_domain> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 45, 0, 21),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi Kamel,',
                        style:TextStyle(
                          fontFamily: 'poppindBold',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ) ),
                        SizedBox(height: 1,),
                        Text('Thursday, 15 Dec',
                            style:TextStyle(
                              fontFamily: 'poppins',
                              color: Colors.black26,
                              fontSize: 14,
                            ) ),
                      ],
                    ),
                    SizedBox(width: 157,),
                    Container(
                      height: 43,
                      width: 43,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Image.asset('assets/profile.png'),
                    ),

                  ],
                ),
              ),
              SizedBox(
                  height:108,
                  width: 316,
                  child: Container(
                    height: 63,
                    width: 236,
                    decoration: BoxDecoration(

                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                        ),
                        BoxShadow(
                          color: color1,
                          spreadRadius: -1.0,
                          blurRadius: 11.0,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.fromLTRB(18, 18, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Your progress',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'poppins',
                              fontSize: 14,
                            ),),
                          Text('30% of Hardware',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'poppindBold',
                              fontSize: 20,
                            ),),
                          SizedBox(height: 5,),
                          Container(
                            width: 280,
                            height: 12,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: LinearProgressIndicator(
                                value: 0.3,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                                backgroundColor: Color(0xffD6D6D6),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              ),
              SizedBox(height: 11,),
              Text('Levels',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'poppindBold',
                  fontSize: 24,
                ),),
              SizedBox(height: 11,),
              InkWell(
                onTap: (){},
                child: Container(height: 89,
                    width: 316,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    )
                    ,child: Stack(
                        children: <Widget>[
                          Image.asset('assets/hardware.png'),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18,27,0, 0),
                            child: Row(
                              children: [
                                Text('1  Level one',
                                  style: TextStyle(
                                    color: color5,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),),
                                SizedBox(width: 123,),
                                Icon(Icons.lock_open_outlined, color: color5,)
                              ],
                            ),
                          ),



                        ],),),
              ),
              SizedBox(height: 17,),
              InkWell(
                onTap: (){},
                child: Container(height: 89,
                  width: 316,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                  ,child: Stack(
                    children: <Widget>[
                      Image.asset('assets/hardware.png'),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18,27,0, 0),
                        child: Row(
                          children: [
                            Text('2  Level two',
                              style: TextStyle(
                                color: color5,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),),
                            SizedBox(width: 121,),
                            Icon(Icons.lock_outline, color: color5,)
                          ],
                        ),
                      ),



                    ],),),
              ),
              SizedBox(height: 17,),
              InkWell(
                onTap: (){},
                child: Container(height: 89,
                  width: 316,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                  ,child: Stack(
                    children: <Widget>[
                      Image.asset('assets/hardware.png'),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18,27,0, 0),
                        child: Row(
                          children: [
                            Text('3  Level three',
                              style: TextStyle(
                                color: color5,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),),
                            SizedBox(width: 104,),
                            Icon(Icons.lock_outlined, color: color5,)
                          ],
                        ),
                      ),



                    ],),),
              ),
              SizedBox(height: 17,),
              InkWell(
                onTap: (){},
                child: Container(height: 89,
                  width: 316,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                  ,child: Stack(
                    children: <Widget>[
                      Image.asset('assets/hardware.png'),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18,27,0, 0),
                        child: Row(
                          children: [
                            Text('4  Level four',
                              style: TextStyle(
                                color: color5,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),),
                            SizedBox(width: 120,),
                            Icon(Icons.lock_outlined, color: color5,)
                          ],
                        ),
                      ),



                    ],),),
              ),
              SizedBox(height: 11,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    TextButton.icon(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>
                              puzzle())),
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
                                fontFamily: 'poppins'),
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
                                fontFamily: 'poppins'),
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
                              puzzle())),
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
                                fontFamily: 'poppins'),
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
                                  puzzle())),
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
                                fontFamily: 'poppins'),
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


                  ]),









              //send button



            ],
          ),
        ),
      ),
    );
  }
}