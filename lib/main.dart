import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_page/screen/login/theme.dart';
import 'package:screen_page/screen/travel/page/travel_view_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: loginPage1Theme(),
      home: TravelPage1(),
    );
  }
}
