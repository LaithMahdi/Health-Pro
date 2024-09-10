import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/app_cache.dart';
import '../constant/app_route.dart';

class InitialMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (AppCache().isLogged == true) {
      return const RouteSettings(name: AppRoute.home);
    }
    return null;
  }
}
