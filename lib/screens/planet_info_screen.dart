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
      body: Column(
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
                     SizedBox(width: 100,),
                    Text(planetName, style: AppTextStyle.white20semiBold),
                  ],
                ),
                SizedBox(height: 103),
                Row(
                  children: [
                    SizedBox(width: 20,),
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
        ],
      ),
    );
  }
}
