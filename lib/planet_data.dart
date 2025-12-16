import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:space/models/planet_model.dart';

Future<List<PlanetDetailsModel>> loadPlanets() async {
  final csvData = await rootBundle.loadString(
    'assets/data/Solar System Data - Sheet1.csv',
  );

  final rows = const CsvToListConverter().convert(csvData);
  List<PlanetDetailsModel> planets = [];

  for (int i = 1; i < rows.length; i++) {
    planets.add(
      PlanetDetailsModel(
        name: rows[i][0],
        title: rows[i][3],
        about: rows[i][4],
        image: rows[i][2],
        distance: rows[i][5].toString(),
        dayLength: rows[i][6].toString(),
        orbitalPeriod: rows[i][7].toString(),
        radius: rows[i][8].toString(),
        mass: rows[i][9].toString(),
        gravity: rows[i][10].toString(),
        surfaceArea: rows[i][11].toString(),
      ),
    );
  }

  return planets;
}