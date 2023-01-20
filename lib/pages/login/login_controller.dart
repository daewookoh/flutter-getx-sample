import 'package:flutter_app/routes/links.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  toDashboard() => Get.toNamed(AppLinks.HOME);
}
