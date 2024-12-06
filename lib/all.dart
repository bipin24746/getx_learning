import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/beginning/homescreen.dart';
import 'package:getx_learning/beginning/homescreenOne.dart';
import 'package:getx_learning/beginning/project2/secondHome.dart';
import 'package:getx_learning/beginning/project4/imagePicker.dart';
import 'package:getx_learning/startingProject/projectone/homeScreen.dart';

class AllPages extends StatefulWidget {
  const AllPages({super.key});

  @override
  State<AllPages> createState() => _AllPagesState();
}

class _AllPagesState extends State<AllPages> {
  // List of pages and their names
  final List<Map<String, dynamic>> pages = [
    {"title": "GetX Counter", "page": Homescreen()},
    {"title": "DarkMode", "page": Homescreenone()},
    {"title": "LightDark", "page": HomeScreen()},
    {"title": "Slider", "page": SecondHome()},
    {"title": "ImagePicker", "page": ImagePicker()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Learning Process",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            // Wrap ListView.builder with Expanded
            child: ListView.builder(
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      title: Text(
                        pages[index]["title"],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        // Navigate to the corresponding page
                        Get.to(pages[index]["page"]);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
