import 'package:get/get.dart';

class Countercontroller extends GetxController {
  RxInt counter = 1.obs;
  counterController() {
    counter.value++;
    print(counter.value);
  }
}
