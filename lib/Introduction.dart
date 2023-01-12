import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Introduction6.dart';
import 'constant.dart';


class OnboardModel {
  String img;
  String text;
  String desc;
  Color bg;
  Color button;

  OnboardModel({
    required this.img,
    required this.text,
    required this.desc,
    required this.bg,
    required this.button,
  });
}


class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  int currentIndex = 0;
  late PageController _pageController;
  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: 'assets/caracter1.png',
      text: "Welcome to TECHLINGO",
      desc:
      "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Ut\n sapien lorem, mollis a erat vel,",
      bg: Colors.white,
      button: blueF,
    ),
    OnboardModel(
      img: 'assets/caracter7.png',
      text: "Welcome to TECHLINGO",
      desc:
      "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Ut\n sapien lorem, mollis a erat vel,",
      bg: Colors.white,
      button: blueF,
    ),
    OnboardModel(
      img: 'assets/caracter8.png',
      text: "Welcome to TECHLINGO",
      desc:
      "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Ut\n sapien lorem, mollis a erat vel,",
      bg: Colors.white,
      button: blueF,
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor:  white ,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => introduction6()));
            },
            child: Text(
              "Skip",
              style: TextStyle(
                color: currentIndex != 2 ? black : white,
                fontFamily: 'Poppins',
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView.builder(
            itemCount: screens.length,
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(screens[index].img),
                  Container(
                    height: 10.0,
                    child: ListView.builder(
                      itemCount: screens.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 3.0),
                                width: currentIndex == index ? 25 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: currentIndex == index
                                      ? blueF
                                      : blueF,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ]);
                      },
                    ),
                  ),


                  Text(
                    screens[index].text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      color: black,
                    ),
                  ),
                  Text(
                    screens[index].desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                      color: black ,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      if (index == 2 ) {

                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) => introduction6()));
                      }

                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.bounceIn,
                      );
                    },
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal:15.0, vertical: 15),
                      decoration: BoxDecoration(
                          color:  blueF ,
                          borderRadius: BorderRadius.circular(360)),
                      child: Row(mainAxisSize: MainAxisSize.min, children: [

                        Icon(
                          Icons.arrow_forward_sharp,
                          color: white,
                        )
                      ]),
                    ),
                  )
                ],
              );
            }),


      ),
    );
  }
}

