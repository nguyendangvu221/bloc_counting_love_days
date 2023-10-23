import 'package:flutter/material.dart';
import 'package:flutter_bloc_couting_love_days/common/constant/app_route.dart';
import 'package:flutter_bloc_couting_love_days/presentation/route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          onGenerateRoute: route(),
          initialRoute: AppRoute.splash,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
