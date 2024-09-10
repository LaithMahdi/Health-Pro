import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/initial_controller.dart';
import 'initial_top_doctor_card.dart';

class InitialTopDoctorListView extends GetView<InitialController> {
  const InitialTopDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          controller.doctorsList.length,
          (index) => InitialTopDoctorCard(
            doctor: controller.doctorsList[index],
          ),
        ),
      ),
    );
  }
}
