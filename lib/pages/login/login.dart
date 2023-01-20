import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth_service.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}

class Login extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
            ),
            const Icon(
              Icons.flutter_dash,
              size: 80,
              color: Color(0xFF1389fd),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  AuthService.to.setPrivateKey("Login");
                },
                child: const Text('Login')),
          ],
        )),
      ),
    );
  }
}
