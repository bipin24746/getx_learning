import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("getx"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Getx Dialog"),
              onTap: () {
                Get.bottomSheet(Container(
                    child: DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text("Dark Mode"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                      ListTile(
                        title: Text("light mode"),
                        leading: Icon(Icons.light_mode),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      )
                    ],
                  ),
                )));
                // Get.defaultDialog(
                //     title: "Delete this?",
                //     middleText: 'sure?',

                //     // textConfirm: "ok",
                //     // textCancel: "Cancle"
                //     confirm: TextButton(onPressed: () {}, child: Text("OK")),
                //     cancel: TextButton(
                //         onPressed: () {
                //           // Navigator.pop(context);
                //           Get.back();
                //         },
                //         child: Text("Cancle")));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.changeTheme(
              Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
