import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/beginning/homescreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Translation"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("message".tr),
            subtitle: Text("name".tr),
          ),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("en", "US"));
              },
              child: Text("English")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("ne", "NP"));
              },
              child: Text("Nepali")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("zh", "CN"));
              },
              child: Text("Chinese")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("ja", "JP"));
              },
              child: Text("Japanese")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("hi", "IN"));
              },
              child: Text("Hindi")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("bn", "BD"));
              },
              child: Text("Bengali")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("ko", "KR"));
              },
              child: Text("Korean")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("th", "TH"));
              },
              child: Text("Thai")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("vi", "VN"));
              },
              child: Text("Vietnamese")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("ms", "MY"));
              },
              child: Text("Malay")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("id", "ID"));
              },
              child: Text("Indonesian")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("ar", "SA"));
              },
              child: Text("Arabic")),
        ],
      ),
    );
  }
}