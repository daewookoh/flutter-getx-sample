import 'package:flutter_app/routes/links.dart';
import 'package:get/get.dart';

class SampleController extends GetxController {
  toFavorites() {
    Get.to(AppLinks.SAMPLE);
  }
}
