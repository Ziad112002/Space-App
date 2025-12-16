import 'package:flutter/material.dart';
import 'package:space/models/planet_model.dart';
import '../styles/app_color.dart';
import '../styles/app_textstyle.dart';

class CustomElevatedButton extends StatelessWidget {
   const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
     this.planet
  });
  final String text;
  final Function() onPressed;
  final PlanetModel? planet;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 26, vertical: 8),
        ),
        backgroundColor: WidgetStatePropertyAll(AppColor.red),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: AppTextStyle.white20semiBold),
          IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.arrow_forward, size: 22, color: AppColor.white),
          ),
        ],
      ),
    );
  }
}
