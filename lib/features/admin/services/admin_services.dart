import 'dart:convert';
import 'dart:io';
import 'package:techlingo/constants/error_handling.dart';
import 'package:techlingo/constant.dart';
import 'package:techlingo/constants/utils.dart';
// import 'package:techlingo/features/admin/models/sales.dart';
import 'package:techlingo/models/word.dart';
import 'package:techlingo/providers/user_provider.dart';
// import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class AdminServices {
  void addWord({
    required BuildContext context,
    required String name,
    required String description,
    required double price,
    required double quantity,
    required String category,
    required List<File> images,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    try {
      final cloudinary = CloudinaryPublic('denfgaxvg', 'uszbstnu');
      List<String> imageUrls = [];

      for (int i = 0; i < images.length; i++) {
        CloudinaryResponse res = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(images[i].path, folder: name),
        );
        imageUrls.add(res.secureUrl);
      }

      Word word = Word(
        name: name,
        description: description,
        images: imageUrls,
        category: category,
        level: level,
        id: id,
      );

      http.Response res = await http.post(
        Uri.parse('$uri/admin/add-word'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: word.toJson(),
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(context, 'Product Added Successfully!');
          Navigator.pop(context);
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  // get all the products
  Future<List<Word>> fetchAllWords(BuildContext context) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    List<Word> productList = [];
    try {
      http.Response res =
          await http.get(Uri.parse('$uri/admin/get-products'), headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'x-auth-token': userProvider.user.token,
      });

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          for (int i = 0; i < jsonDecode(res.body).length; i++) {
            productList.add(
              Word.fromJson(
                jsonEncode(
                  jsonDecode(res.body)[i],
                ),
              ),
            );
          }
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
    // return wordList;
    return wordList;
  }

  void deleteProduct({
    required BuildContext context,
    required Word word,
    required VoidCallback onSuccess,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    try {
      http.Response res = await http.post(
        Uri.parse('$uri/admin/delete-product'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: jsonEncode({
          'id': word.id,
        }),
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          onSuccess();
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  }
// }
  // Future<Map<String, dynamic>> getEarnings(BuildContext context) async {
  //   final userProvider = Provider.of<UserProvider>(context, listen: false);
  //   List<Sales> sales = [];
  //   int totalEarning = 0;
  //   try {
  //     http.Response res =
  //         await http.get(Uri.parse('$uri/admin/analytics'), headers: {
  //       'Content-Type': 'application/json; charset=UTF-8',
  //       'x-auth-token': userProvider.user.token,
  //     });

  //     httpErrorHandle(
  //       response: res,
  //       context: context,
  //       onSuccess: () {
  //         var response = jsonDecode(res.body);
  //         totalEarning = response['totalEarnings'];
  //         sales = [
  //           Sales('Mobiles', response['mobileEarnings']),
  //           Sales('Essentials', response['essentialEarnings']),
  //           Sales('Books', response['booksEarnings']),
  //           Sales('Appliances', response['applianceEarnings']),
  //           Sales('Fashion', response['fashionEarnings']),
  //         ];
  //       },
  //     );
  //   } catch (e) {
  //     showSnackBar(context, e.toString());
  //   }
  //   return {
  //     'sales': sales,
  //     'totalEarnings': totalEarning,
  //   };
