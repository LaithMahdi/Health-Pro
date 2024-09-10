import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/datasource/bottom_navigations.dart';
import '../../../data/model/bottom_navigation_model.dart';
import '../../screens/initial/initial_screen.dart';

class HomeController extends GetxController {
  final List<BottomNavigationModel> _bottomNavs = bottomNavigations;
  late int _currentIndex;

  final List<Widget> _screens = [
    const InitialScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
  ];

  // Getter
  List<BottomNavigationModel> get bottomNavs => _bottomNavs;
  int get currentIndex => _currentIndex;
  List<Widget> get screens => _screens;

  @override
  void onInit() {
    _currentIndex = _bottomNavs.first.id;
    super.onInit();
  }

  void changeIndex(int index) {
    _currentIndex = index;
    update();
  }
}
