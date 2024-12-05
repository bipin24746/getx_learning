import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_learning/beginning/project5crud/LoginController.dart';

class Homecrud extends StatefulWidget {
  const Homecrud({super.key});

  @override
  State<Homecrud> createState() => _HomecrudState();
}

class _HomecrudState extends State<Homecrud> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: controller.emailController.value,
            decoration: InputDecoration(hintText: "Email"),
          ),
          TextFormField(
            controller: controller.passwordController.value,
            decoration: InputDecoration(hintText: "Password"),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: Get.width,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(shape: RoundedRectangleBorder()),
                  onPressed: () {
                    controller.loginApi();
                  },
                  child: Text("Login")),
            ),
          )
        ],
      ),
    );
  }
}
