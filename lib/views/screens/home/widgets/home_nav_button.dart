import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../data/model/bottom_navigation_model.dart';

class HomeNavButton extends StatelessWidget {
  const HomeNavButton({
    super.key,
    required this.nav,
    required this.currentIndex,
    required this.onTap,
  });

  final BottomNavigationModel nav;
  final int currentIndex;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: currentIndex == nav.id ? AppColor.primary : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          nav.icon,
          width: 25,
          height: 25,
          color: currentIndex == nav.id ? AppColor.white : AppColor.darkGrey,
        ),
      ),
    );
  }
}
