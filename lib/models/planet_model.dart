class PlanetModel {
  final String imagePath;
  final String planetName;

  PlanetModel({required this.imagePath, required this.planetName});
}
class PlanetDetailsModel {
  final String name;
  final String title;
  final String about;
  final String image;
  final String distance;
  final String dayLength;
  final String orbitalPeriod;
  final String radius;
  final String mass;
  final String gravity;
  final String surfaceArea;

  PlanetDetailsModel({
    required this.name,
    required this.title,
    required this.about,
    required this.image,
    required this.distance,
    required this.dayLength,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });
}
