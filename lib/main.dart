import 'dart:math';

import 'package:auth/model/user_model.dart';
import 'package:auth/service/auth_service.dart';
import 'package:auth/view/login_page.dart';
import 'package:auth/view/myinfo_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginPage(
      ));}}