import 'package:flutter/material.dart';
import 'package:recommendation_app/screens/category/category_screen.dart';
import 'package:recommendation_app/screens/detail/detail_screen.dart';
import 'package:recommendation_app/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen(),
  DetailScreen.routeName: (context) => DetailScreen()
};
