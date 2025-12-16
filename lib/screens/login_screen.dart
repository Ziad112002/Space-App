import 'package:flutter/material.dart';
import 'package:space/screens/home_screen.dart';
import 'package:space/styles/app_textstyle.dart';
import 'package:space/widgets/custom_elevatedbutton.dart';
import 'package:space/widgets/space_gradient.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login_screen";
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SpaceGradient(
      isImage: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 319),
          Expanded(
            child: Text(
              "Explore\nThe\nUniverse ",
              textAlign: TextAlign.start,
              style: AppTextStyle.white48Thick,
            ),
          ),
          CustomElevatedButton(
            text: "Explore",
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
