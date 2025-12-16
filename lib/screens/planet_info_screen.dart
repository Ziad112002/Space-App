import 'package:flutter/material.dart';
import 'package:space/models/planet_model.dart';
import 'package:space/styles/app_textStyle.dart';
import 'package:space/widgets/space_gradient.dart';
import '../widgets/planet_app_bar.dart';

class PlanetInfoScreen extends StatelessWidget {
  static const String routeName = "planet_info_screen";
  const PlanetInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final planets = ModalRoute.of(context)!.settings.arguments as List;
    final PlanetDetailsModel planet = planets[0];
    final String planetImage = planets[1];
    return SpaceGradient(
      isPadding: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlanetAppBar(
              isCircleArrow: true,
              planetName: planet.name,
              title: planet.title,
            ),
            Image(image: AssetImage(planetImage)),
            Text("About", style: AppTextStyle.white24ExtraBold),
            SizedBox(height: 5),
            Text(planet.about, style: AppTextStyle.white16light),
            SizedBox(height: 15),
            infoText("Distance from Sun (km) : ${planet.distance}"),
            infoText("Length of Day (hours) :  ${planet.dayLength}"),
            infoText("Orbital Period (Earth years) :  ${planet.orbitalPeriod}"),
            infoText("Radius (km) :  ${planet.radius}"),
            infoText("Mass (kg) :  ${planet.mass}"),
            infoText("Gravity (m/s²) :  ${planet.gravity}"),
            infoText("Surface Area (km²) :  ${planet.surfaceArea}"),
          ],
        ),
      ),
    );
  }

  Text infoText(String info) {
    return Text(info, style: AppTextStyle.white16ExtraBold);
  }
}
