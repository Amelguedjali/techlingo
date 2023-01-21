import 'package:flutter/material.dart';
import 'package:techlingo/constant.dart';
import 'package:techlingo/features/admin/services/admin_services.dart';
import 'package:techlingo/constant.dart';
import 'package:techlingo/constants/utils.dart';

class admin_words_add extends StatefulWidget {
  static const String routeName = '/add-word';
  const admin_words_add({Key? key}) : super(key: key);

  @override
  State<admin_words_add> createState() => _admin_words_addState();
}

class _admin_words_addState extends State<admin_words_add> {
  final TextEditingController wordNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  // final AdminServices adminServices = AdminServices();

final _addWordFormKey = GlobalKey<FormState>();

@override
  void dispose() {
    super.dispose();
    wordNameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    quantityController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Form(
          key: _addWordFormKey,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(21, 41, 331.9, 0),
              child: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(
                height:63,
                width: 236,
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
                  child: Center(
                    child: const Text('Add',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'poppindBold',
                        fontSize: 24,
                      ),),
                  ),
                )
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.fromLTRB(13.66, 0, 0, 0),
              child: TextField (
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Word',
                    labelStyle: TextStyle(
                      color: Colors.grey[400],

                    ),
                    hintText: 'Enter Your Word',
                    hintStyle: TextStyle(fontSize: 14,)
                ),
                controller: wordNameController,
              ),
            ),
            Divider(
              height: 24,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13.66, 0, 0, 0),
              child: TextField (
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Description',
                    labelStyle: TextStyle(
                      color: Colors.grey[400],),
                    hintText: 'Enter Your description',
                    hintStyle: TextStyle(fontSize: 14,)
                ),
                controller: descriptionController,
              ),
            ),
            Divider(
              height: 24,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13.66, 0, 0, 0),
              child: TextField (
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Illustration',
                    labelStyle: TextStyle(
                      color: Colors.grey[400],),
                    hintText: 'Enter Your illustration',
                    hintStyle: TextStyle(fontSize: 14,)
                ),
              ),
            ),
            Divider(
              height: 24,
              thickness: 1,
            ),

            SizedBox(height: 135,),



            Center(
              child: SizedBox(
                  height:55,
                  width: 259.82,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: blueF,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),

                        ),
                      ),
                      child: const Text('Add word'))
              ),

            ),

            SizedBox(height: 22,),




            //send button



          ],
        ),
        ),
      ),
    );
  }
}