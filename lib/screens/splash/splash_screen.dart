import 'package:flutter/material.dart';
import 'package:recommendation_app/screens/splash/components/body.dart';
import 'package:recommendation_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // Call screen config to have access to scren sizes
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
