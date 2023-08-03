import 'package:flutter_bloc_couting_love_days/blocs/date/date_bloc.dart';
import 'package:flutter_bloc_couting_love_days/blocs/home/home_bloc.dart';
import 'package:flutter_bloc_couting_love_days/blocs/login/login_bloc.dart';
import 'package:flutter_bloc_couting_love_days/blocs/main/main_bloc.dart';
import 'package:flutter_bloc_couting_love_days/blocs/register/register_bloc.dart';
import 'package:flutter_bloc_couting_love_days/blocs/splash/splash_bloc.dart';
import 'package:flutter_bloc_couting_love_days/blocs/widget/widget_bloc.dart';
import 'package:get_it/get_it.dart';

class Injecter {
  static final getIt = GetIt.instance;

  static void _configBloc() {
    getIt.registerLazySingleton<SplashBloc>(() => SplashBloc());
    getIt.registerLazySingleton<LoginBloc>(() => LoginBloc());
    getIt.registerLazySingleton<RegisterBloc>(() => RegisterBloc());
    getIt.registerLazySingleton<MainBloc>(() => MainBloc());
    getIt.registerLazySingleton<HomeBloc>(() => HomeBloc());
    getIt.registerLazySingleton<DateBloc>(() => DateBloc());
    getIt.registerLazySingleton<WidgetBloc>(() => WidgetBloc());
  }
}
