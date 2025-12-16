import 'package:flutter/material.dart';
import 'package:space/styles/app_textStyle.dart';
import '../styles/app_asset.dart';
class PlanetInfoScreen extends StatefulWidget {
  static const String routeName="planet_info_screen";
  const PlanetInfoScreen({super.key});

  @override
  State<PlanetInfoScreen> createState() => _PlanetInfoScreenState();
}

class _PlanetInfoScreenState extends State<PlanetInfoScreen> {
  late List<String> planetInfo;
late String planetName;
late String imagePath;

  @override
  Widget build(BuildContext context) {
    planetName =ModalRoute.of(context)!.settings.arguments as String;

    return Column(
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
              Text("Explore", style: AppTextStyle.white20semiBold),
              SizedBox(height: 103),
              Row(
                children: [
                  Text(
                    "Which planet\nwould you like to explore?",
                    style: AppTextStyle.white20semiBold,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
