import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/home_controller.dart';
import 'package:flutter_app/services/auth_service.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
            child: Column(
          children: [
            ElevatedButton(
              onPressed: controller.moveToSamplePage,
              child: Text('Move to SamplePage'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: AuthService.to.logout,
              child: Text('Logout'),
            ),
          ],
        )),
      ),
    );
  }
}
