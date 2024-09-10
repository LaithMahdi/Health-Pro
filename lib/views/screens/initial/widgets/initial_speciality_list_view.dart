import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/model/speciality_model.dart';
import '../controller/initial_controller.dart';
import 'initial_speciality.dart';

class InitialSpecialityListView extends GetView<InitialController> {
  const InitialSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        itemCount: controller.specialitiesList.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemBuilder: (context, index) {
          SpecialityModel speciality = controller.specialitiesList[index];
          return GetBuilder<InitialController>(
            builder: (controller) => InitialSpeciality(
              speciality: speciality,
              selectedSpeciality: controller.selectedSpeciality,
              onTap: () => controller.onSpecialitySelected(speciality),
            ),
          );
        },
      ),
    );
  }
}
