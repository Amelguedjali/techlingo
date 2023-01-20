import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:techlingo/pages/HomePage.dart';
import 'package:techlingo/constant.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:pie_chart/pie_chart.dart';


Widget buildLoginWithGoogle(BuildContext context){
  return Center(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(13),
        fixedSize: Size(300, 50),
        primary: Colors.white,
        onPrimary: Colors.grey[700],
        elevation: 0,
        side: BorderSide(color: Colors.grey,width: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
      ),

      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage("assets/google.jfif"),
              height: 24.0,
              width: 24,
              alignment: Alignment.topLeft,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 8),
              child: Text(
                'Login with Google',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF616161),
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    ),);}

Widget buildLogin(BuildContext context){
  return Center(
    child: ElevatedButton(
      child : Text(
        'Login',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: white,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(13),
        fixedSize: Size(300, 50),
        primary: blueF,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
      ),

      onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },

    ),);}


Widget buildSign(BuildContext context){
  return Center(
    child: ElevatedButton(
      child : Text(
        'Signup',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: white,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(13),
        fixedSize: Size(300, 50),
        primary: blueF,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
      ),

      onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },

    ),);}



Widget ConfirmButton(BuildContext context){
  return Center(
    child: ElevatedButton(
      child : Text(
        'Update Profile',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: white,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(13),
        fixedSize: Size(250, 50),
        primary: blueF,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
      ),

      onPressed: () {},

    ),);
}


Widget buildTextField(String labelText, String placeholder){
  return Padding(
    padding: EdgeInsets.only(bottom:30),

    child: TextField(

      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom:5),
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        hintStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          color: Colors.grey[800],
        ),




      ),
    ),
  );
}



Widget buildTimeButton(String time,BuildContext context){
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child : SafeArea(
          child: Center(
            child: ElevatedButton(
              child : Text(
                time,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(13),
                fixedSize: Size(300, 50),
                primary: blueF,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100) ),
              ),

              onPressed: () {},

            ),)
      ));
}

Widget buildProfile(BuildContext context){
  return Container(
      width: 400,
      height:89 ,
      child : Center(
        child :  ElevatedButton(
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
            padding: const EdgeInsets.symmetric(horizontal: 25.0),

            child: Row(

              children:[
                Container(
                    width: 57,
                    height: 57,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/Profile.jfif')

                      ),)),
                Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[

                          SizedBox(height: 10),
                          Text(
                            ' Azerty Ytreza',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'azerty@gmail.com',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: white,
                              fontSize: 11,
                            ),
                          ),


                        ] )),
              ],
            ),
          ),
        ),




      )
  );}




Widget buildOwnMessage(BuildContext context, String name, String message, String time) {
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

                child: Text(name ,
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
                message+ '      ',
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


Widget buildReplyMessage(BuildContext context,String name, String message, String time) {
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

                child: Text(name ,
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
                message+ '      ',
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

}

buildRoomsVu(String image , String room,String description){
  return  Center(

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
                          image: AssetImage(image),

                        ),)),

                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Text(
                              room,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              description,
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
                            '4',
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


  );
}


Widget buildRooms( String image , String room,String description, Page page){
  return  Center(

    child : ElevatedButton(

        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(13),
          fixedSize: Size(330, 66),
          primary: Color(0xFFEBEBEB),
          onPrimary: Colors.grey[700],
          elevation: 0,

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
        ),

        onPressed: () => page ,

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
                          image: AssetImage(image),

                        ),)),

                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Text(
                              room,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              description,
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
                            '4',
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


  );
}


Widget Room( ){
  return  Material(
    color: Colors.transparent,
    elevation: 0,
    borderRadius: BorderRadius.circular(13),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child:InkWell(
      splashColor: black,
      onTap: (){},
      child :Ink.image(
          image:AssetImage('assets/Ai.png'),
          height:189,
          width: 145,
          fit: BoxFit.cover,

          child: Container(

            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal:10),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(13),
              color: Color.fromARGB(150, 255, 255, 255),
            ),


            child : Text('Artificial Intelligence                     ',
              style: TextStyle(fontFamily:'Poppins',
                color: black,
                fontSize: 12,

                fontWeight: FontWeight.bold,),
            ),
          )),

    ),


  );}

class BarChartModel {
  String day;
  int time;


  BarChartModel({
    required this.day,
    required this.time,

  });
}

final List<BarChartModel> data = [
  BarChartModel(
    day: "S",
    time: 35,

  ),
  BarChartModel(
    day: "M",
    time: 28,

  ),
  BarChartModel(
    day: "T",
    time: 20,

  ),
  BarChartModel(
    day: "W",
    time: 45,

  ),
  BarChartModel(
    day: "T",
    time: 37,

  ),
  BarChartModel(
    day: "F",
    time: 20,

  ),
  BarChartModel(
    day: "St",
    time: 15,

  ),

];

@override
Widget buildChart() {
  List<charts.Series<BarChartModel, String>> series = [
    charts.Series(
      id: "Time",
      data: data,
      domainFn: (BarChartModel series, _) => series.day,
      measureFn: (BarChartModel series, _) => series.time,
    ),
  ];

  return Center(child : SizedBox(
    height:150,
    width: 200,



    child: charts.BarChart(
      series,
      vertical: true,
      defaultRenderer: new charts.BarRendererConfig(
        maxBarWidthPx: 5,

      ),


    ),


  ));
}




Map<String, double> dataMap = {
  "Artificial \nintelligence\n": 7,
  "Cyber\nsecurity\n": 2,
  "Programming": 2,
  "Electronics": 2,
};

@override
Widget buildPie(BuildContext context) {
  return  Center(child : SizedBox(
      height:170,
      width: 300,


      child: Column(children : [PieChart(

        dataMap: dataMap,
        chartRadius: MediaQuery.of(context).size.width / 3,
        legendOptions: LegendOptions(
          legendPosition: LegendPosition.left,
        ),
        chartValuesOptions: ChartValuesOptions(
          showChartValuesInPercentage: false,
          showChartValues: false,
        ),
      ),
      ])),
  );
}

