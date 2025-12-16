import 'package:flutter/material.dart';
import 'package:space/styles/app_color.dart';
import 'package:space/styles/app_textStyle.dart';
import 'package:space/widgets/arrow_button.dart';
import 'package:space/widgets/space_gradient.dart';
import '../styles/app_asset.dart';

class PlanetInfoScreen extends StatefulWidget {
  static const String routeName = "planet_info_screen";
  const PlanetInfoScreen({super.key});

  @override
  State<PlanetInfoScreen> createState() => _PlanetInfoScreenState();
}

class _PlanetInfoScreenState extends State<PlanetInfoScreen> {
  late List planetInfo;
  late String planetName;
  late String imagePath;
  @override
  Widget build(BuildContext context) {
    planetInfo = ModalRoute.of(context)!.settings.arguments as List;
    planetName = planetInfo[0];
    imagePath = planetInfo[1];
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
                      Text(planetName, style: AppTextStyle.white20semiBold),
                    ],
                  ),
                  SizedBox(height: 103),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "$planetName:Our Blue Marble ",
                        style: AppTextStyle.white20semiBold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image(image: AssetImage(imagePath)),
            Text("About", style: AppTextStyle.white24ExtraBold),
            SizedBox(height: 8,),
            Text(
              "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
              style: AppTextStyle.white16light,
            ),
            SizedBox(height: 15,),
            Text(
              "Distance from Sun (km) : 149598026",
              style: AppTextStyle.white16ExtraBold,
            ),
            Text(
              "Length of Day (hours) : 23.93",
              style: AppTextStyle.white16ExtraBold,
            ),
            Text(
              "Orbital Period (Earth years) : 1",
              style: AppTextStyle.white16ExtraBold,
            ),
            Text(
              "Radius (km) : 6371",
              style: AppTextStyle.white16ExtraBold,
            ),
            Text(
              "Mass (kg) : 5.972 × 10²⁴",
              style: AppTextStyle.white16ExtraBold,
            ),
            Text(
              "Gravity (m/s²) : 9.81",
              style: AppTextStyle.white16ExtraBold,
            ),
            Text(
              "Surface Area (km²) : 5.10 × 10⁸",
              style: AppTextStyle.white16ExtraBold,
            ),
          ],
        ),
      ),
    );
  }
}
