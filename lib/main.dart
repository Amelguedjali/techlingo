import 'package:flutter/material.dart';
import 'package:techlingo/constant.dart';
import 'package:techlingo/pages/new_password.dart';
import 'package:techlingo/pages/forgot_password.dart';
import 'package:techlingo/pages/resume_for_an_old_user.dart';
import 'package:techlingo/pages/start_for_a_new_user.dart';
import 'package:techlingo/pages/test.dart';
import 'package:techlingo/pages/congratulations.dart';
import 'package:techlingo/pages/oups.dart';
import 'package:techlingo/pages/admin_words_modify.dart';
import 'package:techlingo/pages/admin_words_add.dart';
import 'package:techlingo/pages/introduction6.dart';
import 'package:techlingo/pages/word2.dart';
import 'package:techlingo/pages/word1.dart';
import 'package:techlingo/pages/quiz_qcm.dart';
import 'package:techlingo/pages/admin_words.dart';
import 'package:techlingo/pages/delete_word.dart';
import 'package:techlingo/pages/code_password.dart';
import 'package:techlingo/pages/quiz_match.dart';
import 'package:techlingo/pages/quiz_words.dart';
import 'package:techlingo/pages/quiz_letters.dart';
import 'package:techlingo/pages/puzzle.dart';
import 'package:techlingo/pages/inside_a_domain.dart';
import 'package:techlingo/pages/inside_a_domain_2.dart';
import 'Introduction.dart';



void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        fontFamily: 'poppins'),
    debugShowCheckedModeBanner: false,
    home:  Introduction(),
  ));
}

