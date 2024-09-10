import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home/home_controller.dart';
import 'widgets/home_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());

    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (context) => controller.screens[controller.currentIndex - 1],
      ),
      bottomNavigationBar: const HomeBottomNavigation(),
    );
  }
}
