import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_route.dart';

class SignInController extends GetxController {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _obscurePassword = false;

  // Getter
  TextEditingController get email => _email;
  TextEditingController get password => _password;
  bool get obscurePassword => _obscurePassword;

  void onSignIn() {}

  void onSignUp() => Get.toNamed(AppRoute.signUp);

  void handleObscurePassword() {
    _obscurePassword = _obscurePassword ? false : true;
    update();
  }

  @override
  void onClose() {
    _email.dispose();
    _password.dispose();
    super.onClose();
  }
}
