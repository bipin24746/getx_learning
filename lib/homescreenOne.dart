import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/navigatingScreens.dart';

class Homescreenone extends StatefulWidget {
  const Homescreenone({super.key});

  @override
  State<Homescreenone> createState() => _HomescreenoneState();
}

class _HomescreenoneState extends State<Homescreenone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Row(
          children: [
            IconButton(
                onPressed: () {
                  Get.defaultDialog(
                      textCancel: "cancle",
                      confirm: TextButton(
                          onPressed: () {
                            Get.changeTheme(Get.isDarkMode
                                ? ThemeData.light()
                                : ThemeData.dark());
                          },
                          child: Text("OK")),
                      middleText: "Click Ok to confirm",
                      title: "Change the color?");
                },
                icon: Icon(
                  Icons.light_outlined,
                  color: Colors.white,
                ))
          ],
        ),
        title: Text(
          "Color Changing",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  onPressed: () {
                    // Get.to(Navigatingscreens(
                    //   name: " This is Second Page",
                    // ));
                    Get.toNamed('/navigatorPage',arguments: ['this is first name','this is second name']);
                  },
                  child: Text("Go To screen two")))
        ],
      ),
    );
  }
}
