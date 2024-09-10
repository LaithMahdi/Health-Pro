import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../core/constant/app_image.dart';
import '../../../widgets/search_field.dart';
import 'controller/initial_controller.dart';
import 'widgets/initial_card_carousel.dart';
import 'widgets/initial_speciality_list_view.dart';
import 'widgets/initial_title.dart';
import 'widgets/initial_top_doctor_list_view.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    InitialController controller = Get.put(InitialController());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All services for your health",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(AppImage.bell),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          SearchField(controller: controller.search),
          const InitialTitle(label: "Specialities"),
          const InitialSpecialityListView(),
          const InitialTitle(label: "Services"),
          const InitialCardCarousel(),
          const InitialTitle(label: "Top Doctors"),
          const InitialTopDoctorListView()
        ],
      ),
    );
  }
}
