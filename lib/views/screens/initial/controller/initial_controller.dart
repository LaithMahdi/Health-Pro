import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/datasource/doctors.dart';
import '../../../../data/datasource/specialities.dart';
import '../../../../data/model/doctor_model.dart';
import '../../../../data/model/speciality_model.dart';

class InitialController extends GetxController {
  final TextEditingController _search = TextEditingController();
  final List<SpecialityModel> _specialitiesList = specialities;
  final List<DoctorModel> _doctorsList = doctors;
  late SpecialityModel _selectedSpeciality;

  // Getter
  TextEditingController get search => _search;
  List<SpecialityModel> get specialitiesList => _specialitiesList;
  SpecialityModel get selectedSpeciality => _selectedSpeciality;
  List<DoctorModel> get doctorsList => _doctorsList;

  void onSpecialitySelected(SpecialityModel speciality) {
    _selectedSpeciality = speciality;
    update();
  }

  @override
  void onInit() {
    _selectedSpeciality = _specialitiesList.first;
    super.onInit();
  }

  @override
  void onClose() {
    _search.dispose();
    super.onClose();
  }
}
