import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_couting_love_days/blocs/date/date_bloc.dart';
import 'package:flutter_bloc_couting_love_days/blocs/home/home_bloc.dart';
import 'package:flutter_bloc_couting_love_days/blocs/login/login_bloc.dart';
import 'package:flutter_bloc_couting_love_days/blocs/register/register_bloc.dart';
import 'package:flutter_bloc_couting_love_days/blocs/widget/widget_bloc.dart';
import 'package:flutter_bloc_couting_love_days/common/constant/app_route.dart';
import 'package:flutter_bloc_couting_love_days/common/injector/injector.dart';
import 'package:flutter_bloc_couting_love_days/presentation/journey/login/login_screen.dart';
import 'package:flutter_bloc_couting_love_days/presentation/journey/main/main_screen.dart';
import 'package:flutter_bloc_couting_love_days/presentation/journey/register/register_screen.dart';
import 'package:flutter_bloc_couting_love_days/presentation/journey/splash/splash_screen.dart';

int currentRoot = 1;
RouteFactory route() {
  return (RouteSettings settings) {
    if (currentRoot == 1) {
      currentRoot = 2;
      return CupertinoPageRoute(builder: (context) {
        return const SplashScreen();
      });
    }
    switch (settings.name) {
      case AppRoute.login:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => Injecter.getIt<LoginBloc>(),
            child: const LoginScreen(),
          ),
        );
      case AppRoute.register:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => Injecter.getIt<RegisterBloc>(),
            child: const RegisterScreen(),
          ),
        );
      case AppRoute.main:
        return CupertinoPageRoute(
          builder: (context) => MultiBlocProvider(providers: [
            BlocProvider(
              create: (context) => Injecter.getIt<HomeBloc>(),
            ),
            BlocProvider(
              create: (context) => Injecter.getIt<DateBloc>(),
            ),
            BlocProvider(
              create: (context) => Injecter.getIt<WidgetBloc>(),
            ),
          ], child: const MainScreen()),
        );

      //   case AppRoute.home:
      //     BlocProvider(
      //       create: (context) => Injecter.getIt<HomeBloc>(),
      //       child: const HomeScreen(),
      //     );
      //   case AppRoute.date:
      //     BlocProvider(
      //       create: (context) => Injecter.getIt<DateBloc>(),
      //       child: const DateScreen(),
      //     );
      //   case AppRoute.widget:
      //     BlocProvider(
      //       create: (context) => Injecter.getIt<WidgetBloc>(),
      //       child: const WidgetScreen(),
      //     );
    }
    return MaterialPageRoute(
      builder: (_) => Container(),
    );
  };
}
