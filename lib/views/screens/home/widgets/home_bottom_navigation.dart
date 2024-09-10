import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../data/model/bottom_navigation_model.dart';
import '../../../controller/home/home_controller.dart';
import 'home_nav_button.dart';

class HomeBottomNavigation extends GetView<HomeController> {
  const HomeBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: AppColor.darkGrey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          controller.bottomNavs.length,
          (index) {
            BottomNavigationModel nav = controller.bottomNavs[index];
            return GetBuilder<HomeController>(
              builder: (context) => HomeNavButton(
                nav: nav,
                currentIndex: controller.currentIndex,
                onTap: () => controller.changeIndex(nav.id),
              ),
            );
          },
        ),
      ),
    );
  }
}
