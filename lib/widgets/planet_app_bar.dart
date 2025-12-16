import 'package:flutter/material.dart';
import 'package:space/styles/app_color.dart';
import 'package:space/widgets/arrow_button.dart';
import '../styles/app_asset.dart';
import '../styles/app_textStyle.dart';

class PlanetAppBar extends StatelessWidget {
  const PlanetAppBar({super.key, this.isCircleArrow = false, this.planetName,this.title});
  final bool isCircleArrow;
  final String? planetName;
  final String? title;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAsset.homeBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black.withValues(alpha: 0.8), Colors.transparent],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isCircleArrow
                ? Row(
                    children: [
                      ArrowButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 22,
                          color: AppColor.white,
                        ),
                      ),
                      SizedBox(width: 100),
                      Text(planetName!, style: AppTextStyle.white20semiBold),
                    ],
                  )
                : Center(
                    child: Text("Explore", style: AppTextStyle.white20semiBold),
                  ),
            SizedBox(height: 103),
            Text(
              isCircleArrow?title!:"Which planet\nwould you like to explore?",
              style: AppTextStyle.white20semiBold,
            ),
          ],
        ),
      ),
    );
  }
}
