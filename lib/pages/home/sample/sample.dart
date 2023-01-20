import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sample_controller.dart';

class SampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SampleController());
  }
}

class Sample extends GetView<SampleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample"),
      ),
      body: Container(
        child: Center(child: Text("")),
      ),
    );
  }
}
