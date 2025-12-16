import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:space/models/planet_model.dart';

Future<List<PlanetDetailsModel>> loadPlanets() async {
  final csvData = await rootBundle.loadString(
    'assets/data/solar_system.csv',
  );

  final rows = const CsvToListConverter().convert(csvData);
  List<PlanetDetailsModel> planets = [];

  for (int i = 1; i < rows.length; i++) {
    planets.add(
      PlanetDetailsModel(
        name: rows[i][0],
        title: rows[i][1],
        about: rows[i][2],
        image: rows[i][3],
        distance: rows[i][4].toString(),
        dayLength: rows[i][5].toString(),
        orbitalPeriod: rows[i][6].toString(),
        radius: rows[i][7].toString(),
        mass: rows[i][8].toString(),
        gravity: rows[i][9].toString(),
        surfaceArea: rows[i][10].toString(),
      ),
    );
  }

  return planets;
}