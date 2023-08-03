import 'package:flutter/material.dart';
import 'package:flutter_bloc_couting_love_days/gen/fonts.gen.dart';
import 'package:flutter_bloc_couting_love_days/presentation/theme/theme_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeText {
  static final TextStyle bodyRegularSatisfy = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    fontFamily: FontFamily.satisfy,
    color: AppColors.pink1000,
  );
  static final bodyMediumSatisfy = bodyRegularSatisfy.copyWith(
    fontWeight: FontWeight.w500,
  );
  static final TextStyle bodyRegularRoboto = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    fontFamily: FontFamily.roboto,
    color: AppColors.pink100,
  );
}
