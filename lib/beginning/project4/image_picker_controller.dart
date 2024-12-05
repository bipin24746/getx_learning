import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  // Observable variable to store the image path
  RxString imagePath = ''.obs;

  // Method to pick an image from the camera
  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      // Update the observable with the image path
      imagePath.value = image.path.toString();
    }
  }
}
