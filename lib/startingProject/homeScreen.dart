import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/startingProject/counterController.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final Countercontroller controller = Get.put(Countercontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Learning"),
      ),
      body: Center(child: Obx(() {
        return Text(
          controller.counter.toString(),
          style: TextStyle(fontSize: 40),
        );
      })),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.incrementCounter();
      }),
    );
  }
}
