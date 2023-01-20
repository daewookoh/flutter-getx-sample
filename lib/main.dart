import 'package:flutter/material.dart';
import 'package:flutter_app/routes/links.dart';
import 'package:flutter_app/routes/routes.dart';
import 'package:flutter_app/services/auth_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(AuthService());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppLinks.HOME,
      getPages: AppRoutes.pages,
    );
  }
}
