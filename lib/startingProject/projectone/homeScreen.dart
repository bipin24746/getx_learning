import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/startingProject/projectone/counterController.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Countercontroller controller = Get.put(Countercontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Getx Counter",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Obx(() {
        return Center(
          child: Text(
            controller.counter.toString(),
            style: TextStyle(fontSize: 40),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.counterController();
      }),
    );
  }
}
