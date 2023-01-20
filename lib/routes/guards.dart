import 'package:flutter/material.dart';
import 'package:flutter_app/routes/links.dart';
import 'package:flutter_app/services/auth_service.dart';
import 'package:get/get.dart';

class AuthGuard extends GetMiddleware {
  final authService = Get.find<AuthService>();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (route == AppLinks.LOGIN && authService.privateKey.value != "") {
      return const RouteSettings(name: AppLinks.HOME);
    } else if (route != AppLinks.LOGIN && authService.privateKey.value == "") {
      return const RouteSettings(name: AppLinks.LOGIN);
    }

    return null;
  }
}
