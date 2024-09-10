import '../../core/constant/app_image.dart';
import '../model/bottom_navigation_model.dart';

List<BottomNavigationModel> bottomNavigations = [
  BottomNavigationModel(
    id: 1,
    label: 'Home',
    icon: AppImage.home,
  ),
  BottomNavigationModel(
    id: 2,
    label: 'Message',
    icon: AppImage.mail,
  ),
  BottomNavigationModel(
    id: 3,
    label: 'Schedule',
    icon: AppImage.calendar,
  ),
  BottomNavigationModel(
    id: 4,
    label: 'Profile',
    icon: AppImage.user,
  ),
];
