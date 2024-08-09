import 'package:doctor/core/constant/app_family.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constant/app_color.dart';
import 'core/constant/app_string.dart';
import 'routeurs/get_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColor.primary,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
        fontFamily: AppFamily.inter,
        useMaterial3: true,
      ),
      getPages: getPages,
    );
  }
}
