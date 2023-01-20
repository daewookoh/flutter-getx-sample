import 'package:flutter_app/routes/links.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  moveToSamplePage() => Get.toNamed(AppLinks.SAMPLE);
}
