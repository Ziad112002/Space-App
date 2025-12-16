import 'package:flutter/material.dart';
import 'package:space/models/planet_model.dart';
import 'package:space/screens/planet_info_screen.dart';
import 'package:space/styles/app_asset.dart';
import 'package:space/styles/app_color.dart';
import 'package:space/styles/app_textStyle.dart';
import 'package:space/widgets/arrow_button.dart';
import 'package:space/widgets/space_gradient.dart';
import '../planet_data.dart';
import '../widgets/custom_elevatedbutton.dart';
import '../widgets/planet_app_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home_screen";
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  final List<PlanetModel> planets = [
    PlanetModel(imagePath: AppAsset.sun, planetName: "Sun"),
    PlanetModel(imagePath: AppAsset.mercury, planetName: "Mercury"),
    PlanetModel(imagePath: AppAsset.venus, planetName: "Venus"),
    PlanetModel(imagePath: AppAsset.earth, planetName: "Earth"),
    PlanetModel(imagePath: AppAsset.mars, planetName: "Mars"),
    PlanetModel(imagePath: AppAsset.jupiter, planetName: "Jupiter"),
    PlanetModel(imagePath: AppAsset.saturn, planetName: "Saturn"),
    PlanetModel(imagePath: AppAsset.uranus, planetName: "Uranus"),
    PlanetModel(imagePath: AppAsset.neptune, planetName: "Neptune"),
  ];

  int _currentPage = 0;
  List<PlanetDetailsModel> planetsData = [];
  @override
  void initState() {
    super.initState();
    loadPlanetsData();
  }

  void loadPlanetsData() async {
    planetsData = await loadPlanets();
    setState(() {});
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPagedChange(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 10),
        curve: Curves.easeIn,
      );
    }
  }

  void _nextPage() {
    if (_currentPage < planets.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 10),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SpaceGradient(
      body: Column(
        children: [
          PlanetAppBar(),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: _onPagedChange,
              itemCount: planets.length,
              itemBuilder: (context, index) => buildPlanetAsset(planets[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPlanetAsset(PlanetModel planet) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Expanded(flex: 7, child: Image(image: AssetImage(planet.imagePath))),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ArrowButton(
                  onPressed: _previousPage,
                  icon: Icon(Icons.arrow_back, size: 22, color: AppColor.white),
                ),
                Text(planet.planetName, style: AppTextStyle.white24ExtraBold),
                ArrowButton(
                  onPressed: _nextPage,
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 22,
                    color: AppColor.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 38),
          Expanded(
            child: CustomElevatedButton(
              text: "Explore ${planet.planetName}",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  PlanetInfoScreen.routeName,
                  arguments: [planetsData[_currentPage], planet.imagePath],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

