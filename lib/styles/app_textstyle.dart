import 'package:flutter/material.dart';
import 'app_color.dart';
abstract final class AppTextStyle {
  static const TextStyle white48Thick = TextStyle(
    fontSize: 48,
    color:AppColor.white ,
    fontWeight: FontWeight.w900,
  );
  static const TextStyle white20semiBold = TextStyle(
    fontSize: 20,
    color: AppColor.white,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle white24ExtraBold = TextStyle(
    fontSize: 24,
    color: AppColor.white,
    fontWeight: FontWeight.w700,

  );
  static const TextStyle white16ExtraBold = TextStyle(
    fontSize: 16,
    color: AppColor.white,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle white16light = TextStyle(
    fontSize: 16,
    color: AppColor.white,
    fontWeight: FontWeight.w400,
  );

}
