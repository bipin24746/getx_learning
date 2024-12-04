import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/beginning/project3/thirdGetx.dart';

class ThirdHome extends StatefulWidget {
  const ThirdHome({super.key});

  @override
  State<ThirdHome> createState() => _ThirdHomeState();
}

class _ThirdHomeState extends State<ThirdHome> {
  notifications changenotify = Get.put(notifications());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification Button",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Notifications"),
          Obx(() {
            return Switch(
                value: changenotify.notification.value,
                onChanged: (value) {
                  changenotify.changenotification(value);
                });
          })
        ],
      ),
    );
  }
}
