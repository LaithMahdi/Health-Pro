import 'package:get/get.dart';
import '../../../core/constant/app_route.dart';

class WelcomeAuthController extends GetxController {
  void onAuthorize() {}

  void onSignUp() => Get.toNamed(AppRoute.signUp);
}
