import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/datasource/onboarding_list.dart';

class OnboardingController extends GetxController {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  // Getter
  int get currentIndex => _currentIndex;
  PageController get pageController => _pageController;

  bool isLastPage() =>
      onboardingList.length - 1 == _currentIndex ? true : false;

  void updateCurrentIndex(int index) {
    _currentIndex = index;
    update();
  }

  void nextPage() {
    if (isLastPage() == false) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      print("Last Page");
    }
  }

  void skipOnboarding() {
    _pageController.animateToPage(
      onboardingList.length - 1,
      duration: const Duration(milliseconds: 700),
      curve: Curves.linear,
    );
  }
}
