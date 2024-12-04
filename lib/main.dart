import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/beginning/heightWidth.dart';
import 'package:getx_learning/beginning/homescreen.dart';
import 'package:getx_learning/beginning/homescreenOne.dart';
import 'package:getx_learning/beginning/navigatingScreens.dart';
import 'package:getx_learning/beginning/project2/secondHome.dart';
import 'package:getx_learning/beginning/translation/HomePage.dart';
import 'package:getx_learning/beginning/translation/languages.dart';
import 'package:getx_learning/startingProject/projectone/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx',
      // locale: Locale("US"),
      // fallbackLocale: Locale("en", "US"),
      // locale: Locale("en", "US"),
      // translations: Languages(),
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      // home: const Homepage(),
      // getPages: [
      //   GetPage(name: "/", page: () => HomeScreen()),
      //   GetPage(name: "/homescreenone", page: () => Homescreenone()),
      //   GetPage(name: "/navigatorPage", page: () => Navigatingscreens()),
      //   GetPage(
      //       name: "/height",
      //       page: () => Heightwidth(
      //             height: '',
      //           ))
      // ],

      home: const SecondHome(),
    );
  }
}
