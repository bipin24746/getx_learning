import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/heightWidth.dart';
import 'package:getx_learning/homescreen.dart';
import 'package:getx_learning/homescreenOne.dart';
import 'package:getx_learning/navigatingScreens.dart';
import 'package:getx_learning/translation/HomePage.dart';
import 'package:getx_learning/translation/languages.dart';

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
      fallbackLocale: Locale("en", "US"),
      locale: Locale("en", "US"),
      translations: Languages(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homepage(),
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
    );
  }
}
