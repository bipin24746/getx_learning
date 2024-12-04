import 'package:get/get.dart';

class opacityController extends GetxController {
  RxDouble opacity = 0.1.obs;
  OpacityController(double value) {
    opacity.value = value;
  }
}
