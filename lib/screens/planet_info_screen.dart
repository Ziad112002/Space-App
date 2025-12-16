import 'package:flutter/material.dart';
import 'package:space/models/planet_model.dart';
import 'package:space/styles/app_color.dart';
import 'package:space/styles/app_textStyle.dart';
import 'package:space/widgets/arrow_button.dart';
import 'package:space/widgets/space_gradient.dart';
import '../styles/app_asset.dart';

class PlanetInfoScreen extends StatelessWidget {
  static const String routeName = "planet_info_screen";
  const PlanetInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final planets = ModalRoute.of(context)!.settings.arguments as List;
   final PlanetDetailsModel planet=planets[0];
   final String planetImage=planets[1];
    return SpaceGradient(
      isPadding: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, right: 69, top: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAsset.homeBg),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      ArrowButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          size: 22,
                          color: AppColor.white,
                        ),
                      ),
                      SizedBox(width: 100),
                      Text(planet.name, style: AppTextStyle.white20semiBold),
                    ],
                  ),
                  SizedBox(height: 103),
                  Row(
                    children: [

                      Expanded(
                        child: Text(
                          planet.title,
                          style: AppTextStyle.white20semiBold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image(image: AssetImage(planetImage)),
            Text("About", style: AppTextStyle.white24ExtraBold),
            SizedBox(height: 8,),
            Text(
              planet.about,
              style: AppTextStyle.white16light,
            ),
            SizedBox(height: 15,),
            Text(
              "Distance from Sun (km) : ${planet.distance}",
              style: AppTextStyle.white16ExtraBold,
            ),
            Text(
              "Length of Day (hours) :  ${planet.dayLength}",
              style: AppTextStyle.white16ExtraBold,
            ),
            Text(
              "Orbital Period (Earth years) :  ${planet.orbitalPeriod}",
              style: AppTextStyle.white16ExtraBold,
            ),
            Text(
              "Radius (km) :  ${planet.radius}",
              style: AppTextStyle.white16ExtraBold,
            ),
            Text(
              "Mass (kg) :  ${planet.mass}",
              style: AppTextStyle.white16ExtraBold,
            ),
            Text(
              "Gravity (m/s²) :  ${planet.gravity}",
              style: AppTextStyle.white16ExtraBold,
            ),
            Text(
              "Surface Area (km²) :  ${planet.surfaceArea}",
              style: AppTextStyle.white16ExtraBold,
            ),
          ],
        ),
      ),
    );
  }
}
