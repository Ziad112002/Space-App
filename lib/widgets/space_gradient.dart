import 'package:flutter/material.dart';
import '../styles/app_asset.dart';
import '../styles/app_color.dart';

class SpaceGradient extends StatelessWidget {
  const SpaceGradient({
    super.key,
    required this.body,
    this.isImage = false,
    this.isPadding = false,
  });
  final Widget body;
  final bool isImage;
  final bool isPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isPadding ? EdgeInsets.only(right: 16, left: 16, bottom: 8) : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColor.black,
        image: isImage
            ? DecorationImage(
                image: AssetImage(AppAsset.loginBg),
                fit: BoxFit.fill,
              )
            : null,
      ),
      child: Scaffold(backgroundColor: Colors.transparent, body: body),
    );
  }
}
