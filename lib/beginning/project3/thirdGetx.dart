import 'package:get/get.dart';

class notifications extends GetxController {
  RxBool notification = false.obs;
  changenotification(bool value) {
    notification.value = value;
  }
}
