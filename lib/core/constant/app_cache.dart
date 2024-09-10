import 'package:get/get.dart';
import '../service/cache_service.dart';

class AppCache {
  CacheService service = Get.find<CacheService>();

  AppCache();

  final String _isLogged = 'isLogged';

  Future<void> setLogged() async {
    await service.sharedPreferences.setBool(_isLogged, true);
  }

  bool get isLogged => service.sharedPreferences.getBool(_isLogged) ?? false;

  Future<void> removeLogged() async {
    await service.sharedPreferences.remove(_isLogged);
  }
}
