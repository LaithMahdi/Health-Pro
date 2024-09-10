class DoctorModel {
  final int id;
  final String name;
  final String imageUrl;
  final String speciality;
  final double rating;
  final double distance;

  DoctorModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.speciality,
    required this.rating,
    required this.distance,
  });
}
