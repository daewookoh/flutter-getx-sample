import 'package:flutter_app/routes/links.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get_storage/get_storage.dart';

class AuthService extends GetxService {
  static AuthService get to => Get.find();

  final privateKey = RxString("");

  @override
  onInit() {
    privateKey.value = GetStorage().read("privateKey") ?? "";
    return super.onInit();
  }

  setPrivateKey(String key) {
    privateKey.value = key;
    GetStorage().write("privateKey", key);
    Get.offAllNamed(AppLinks.HOME);
  }

  logout() {
    setPrivateKey("");
  }
}
