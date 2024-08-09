import 'package:get/get.dart';
import '../core/constant/app_route.dart';
import '../views/screens/splash/splash_screen.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: AppRoute.splash, page: () => const SplashScreen()),
];
