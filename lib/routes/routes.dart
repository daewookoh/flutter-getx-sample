import 'package:flutter_app/pages/index.dart';
import 'package:flutter_app/routes/guards.dart';
import 'package:get/get.dart';

import 'links.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: AppLinks.LOGIN,
      page: () => Login(),
      binding: LoginBinding(),
      middlewares: [
        AuthGuard(),
      ],
    ),
    GetPage(
      name: AppLinks.HOME,
      page: () => Home(),
      binding: HomeBinding(),
      middlewares: [
        AuthGuard(),
      ],
      children: [
        GetPage(
          name: AppLinks.SAMPLE,
          binding: SampleBinding(),
          page: () => Sample(),
        ),
      ],
    ),
  ];
}
