import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Heightwidth extends StatefulWidget {
  final String height;
  const Heightwidth({super.key, required this.height});

  @override
  State<Heightwidth> createState() => _HeightwidthState();
}

class _HeightwidthState extends State<Heightwidth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.height),
      ),
      body: Column(
        children: [
          Container(
              height: 20,
              width: Get.width, //just like mediaquery
              color: Colors.red,
              child: Center(child: Text("this")))
        ],
      ),
    );
  }
}
