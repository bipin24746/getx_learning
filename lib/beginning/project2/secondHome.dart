import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/beginning/project2/secondGetx.dart';

class SecondHome extends StatefulWidget {
  const SecondHome({super.key});

  @override
  State<SecondHome> createState() => _SecondHomeState();
}

class _SecondHomeState extends State<SecondHome> {
  opacityController control = Get.put(opacityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Column(
        children: [
          Obx(() {
            return Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(control.opacity.value),
            );
          }),
          Obx(() {
            return Slider(
                value: control.opacity.value,
                onChanged: (value) {
                  control.OpacityController(value);
                });
          })
        ],
      ),
    );
  }
}
