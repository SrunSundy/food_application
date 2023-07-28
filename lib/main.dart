import 'package:flutter/material.dart';
import 'package:food_app/color.dart';
import 'package:food_app/routers/app_route_name.dart';
import 'package:food_app/routers/app_route_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutePage.routes,
      initialRoute: AppRouteName.root,

      //define default style
      theme: ThemeData(
        primaryColor: primary,  //set default color of the app for text
        scaffoldBackgroundColor: background, // default color for your scaffold of every pages
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: white,
          titleTextStyle: TextStyle(
            color: black,
            fontSize: 20
          )
        ) //appbar default style for every page
      ),

    );
  }
}
