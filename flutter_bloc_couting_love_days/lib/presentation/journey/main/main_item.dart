import 'package:flutter/material.dart';
import 'package:flutter_bloc_couting_love_days/presentation/journey/date/date_screen.dart';
import 'package:flutter_bloc_couting_love_days/presentation/journey/home/home_screen.dart';
import 'package:flutter_bloc_couting_love_days/presentation/journey/widget/widget_screen.dart';

enum MainItem {
  HomeScreenItem,
  DateScreenItem,
  WidgetScreenItem,
}

extension MainItemExtension on MainItem {
  Widget getScreen() {
    switch (this) {
      case MainItem.HomeScreenItem:
        return const HomeScreen();
      case MainItem.DateScreenItem:
        return const DateScreen();
      case MainItem.WidgetScreenItem:
        return const WidgetScreen();
    }
  }

  int getIndex() {
    switch (this) {
      case MainItem.HomeScreenItem:
        return 1;
      case MainItem.DateScreenItem:
        return 2;
      case MainItem.WidgetScreenItem:
        return 3;
    }
  }

  IconData getIcon() {
    switch (this) {
      case MainItem.HomeScreenItem:
        return Icons.home;
      case MainItem.DateScreenItem:
        return Icons.celebration;
      case MainItem.WidgetScreenItem:
        return Icons.star;
    }
  }
}
