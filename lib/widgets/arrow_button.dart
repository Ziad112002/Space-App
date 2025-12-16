import 'package:flutter/material.dart';
import '../styles/app_color.dart';
class ArrowButton extends StatelessWidget {
  const ArrowButton({super.key,required this.onPressed,this.icon});
  final Function()onPressed;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColor.red),
        shape:WidgetStatePropertyAll(CircleBorder()),
      ),
      onPressed: onPressed,
      child: icon,
    );
  }
}
