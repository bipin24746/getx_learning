import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/beginning/heightWidth.dart';

class Navigatingscreens extends StatefulWidget {
  // final String name;
  // const Navigatingscreens({super.key, this.name = ''});
  var name;
  Navigatingscreens({super.key, this.name});

  @override
  State<Navigatingscreens> createState() => _NavigatingscreensState();
}

class _NavigatingscreensState extends State<Navigatingscreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments[0]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("Get Back")),
                TextButton(
                    onPressed: () {
                      Get.to(Heightwidth(
                        height: "this is height page",
                      ));
                    },
                    child: Text("Go to page height width"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
