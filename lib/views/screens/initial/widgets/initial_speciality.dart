import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../data/model/speciality_model.dart';

class InitialSpeciality extends StatelessWidget {
  const InitialSpeciality({
    super.key,
    required this.speciality,
    required this.selectedSpeciality,
    required this.onTap,
  });

  final SpecialityModel speciality, selectedSpeciality;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        clipBehavior: Clip.none,
        width: 110,
        height: 110,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppColor.white,
          border: selectedSpeciality == speciality
              ? Border.all(color: AppColor.primary, width: 2)
              : null,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              speciality.imageUrl,
              width: 25,
              height: 25,
              color: selectedSpeciality == speciality
                  ? AppColor.primary
                  : AppColor.black,
            ),
            const SizedBox(height: 7),
            Text(
              speciality.name,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: selectedSpeciality == speciality
                        ? AppColor.primary
                        : AppColor.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
