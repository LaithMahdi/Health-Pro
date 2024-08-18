import 'package:get/get.dart';
import '../core/constant/app_route.dart';
import '../views/screens/authentification/sign_in_screen.dart';
import '../views/screens/authentification/sign_up_screen.dart';
import '../views/screens/authentification/welcome_auth_screen.dart';
import '../views/screens/onboarding/onboarding_screen.dart';
import '../views/screens/splash/splash_screen.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: AppRoute.splash, page: () => const SplashScreen()),
  GetPage(name: AppRoute.onboarding, page: () => const OnboardingScreen()),
  GetPage(name: AppRoute.welcomeAuth, page: () => const WelcomeAuthScreen()),
  GetPage(name: AppRoute.signUp, page: () => const SignUpScreen()),
  GetPage(name: AppRoute.signIn, page: () => const SignInScreen()),
];
